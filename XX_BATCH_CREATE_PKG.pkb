--------------------------------------------------------
--  DDL for Package Body XX_BATCH_CREATE_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "XX_BATCH_CREATE_PKG" 
AS
PROCEDURE p_create(
    errbuf OUT VARCHAR2,
    retcode OUT VARCHAR2,
    P_BATCH_TOTAL IN NUMBER,
    P_FILE_PATH   IN VARCHAR2)
IS
  v_batch_total NUMBER;
  v_Batch_Name  VARCHAR2(50);
  l_inbound     NUMBER(10);
  l_file_id     NUMBER(10);
  l_mr_blobby BLOB;
  l_batch_id NUMBER(10);
  l_rowid rowid;
  l_attached_document_id NUMBER;
  l_document_id          NUMBER;
  l_media_id             NUMBER;
  l_category_id          NUMBER := 1000529;
  l_pk1_value fnd_attached_documents.pk1_value%TYPE ; --Batch ID
  l_description fnd_documents_tl.description%TYPE := 'Scanned Invoice';
  l_filename fnd_documents_tl.file_name%TYPE;
  l_seq_num          NUMBER;
  l_scan_id          NUMBER(10);
  l_Rec              NUMBER(10);
  L_OP_UNIT          NUMBER;
  l_CPO              VARCHAR2(240);
  l_invoice_detected NUMBER;
  l_request_id       NUMBER;
  l_data_file        VARCHAR2(240);
  l_directory_path   VARCHAR2(240);
  l_data_recordfrom  NUMBER;
  strFolder          VARCHAR2(240);
  strExt             VARCHAR2(240);
  No_Invoices        EXCEPTION;
  vfilename          VARCHAR2(240);
  l_user_id           number;
  --Java_busted exception;
  f_lob BFILE;
  b_lob BLOB;
  v_file_blob BLOB;
  image_name     VARCHAR2(30);
  mime_type      VARCHAR2(30);
  dot_pos        NUMBER;
  l_next_scan_id NUMBER;
  tt_test        NUMBER;
  l_changed_Scan_id number;
  l_changed_Scan_blob BLOB;
  l_new_org_id  NUMBER;
  L_BF_DIR varchar2(30);
  
  
  
  
  -----------------------------------------------------------------------
  -----------------------------------------------------------------------
  --Cursor for each scan
  -----------------------------------------------------------------------
  -------------------------------
  CURSOR PROCESS_OU
  IS 
      select organization_id
      from hr_all_organization_units
      where attribute21 = 'Y'
      order by 1 desc; 
  
  
  
  CURSOR PROCESS_CHANGED_SCAN_ORG
  IS
        select scan_id, Scan_Blob, New_org_id
        from XX.XXAP_SCAN
        where new_org_id is not null
        and new_scan_id is null;

  
  
  CURSOR XX_GET_ID_SCANS
  IS
    SELECT scan_id FROM XX.XXAP_SCAN ;
  output_file utl_file.file_type;
  CURSOR XX_LOAD_SCANS
  IS
    SELECT filename FROM XX_AP_SCAN_DIR_LIST;
  output_file utl_file.file_type;
BEGIN
  fnd_file.put_line(FND_FILE.log, 'Begin');
  fnd_file.put_line(FND_FILE.log, 'Starting Java Call');
  fnd_file.put_line(FND_FILE.output, 'Invoice Batch Scanning Program');
  fnd_file.put_line(FND_FILE.output, '           ');
  --Declare the directory path from the concurrent program parameter
  

  fnd_file.put_line(FND_FILE.log, 'AP_SCAN_DIR_LIST deleted' );
 l_user_id := fnd_profile.value('USER_ID');
  --------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------
  /*Call to java wrapper, relies on declarative procedure call_dir_list that
  looks like this:
  --Package to be compilled
  create or replace procedure call_dir_list (p_directory in varchar2 )
  as language java
  NAME 'DirList.getList( java.lang.String )';
  --This calls the actual Java class which is:
  \\Java Package to compile
  create or replace and compile java source named "DirList"
  as
  import java.io.*;
  import java.sql.*;
  public class DirList
  {
  public static void getList(String directory)
  throws SQLException
  {
  File path = new File( directory );
  String[] list = path.list();
  String element;
  for(int i = 0; i < list.length; i++)
  {
  element = list[i];
  #sql { INSERT INTO DIR_LIST (FILENAME)
  VALUES (:element) };
  }
  }
  }
  \\ Please note, for all users stuck in the past, jDeveloper is needed to edit
  and compile this java class
  */
  
  
  OPEN PROCESS_OU;
  LOOP
    --fnd_file.put_line(FND_FILE.output, 'cursor opened');
    FETCH PROCESS_OU
    INTO L_OP_UNIT;
    EXIT WHEN PROCESS_OU%notfound;


        l_directory_path := P_FILE_PATH||'/'||L_OP_UNIT;
        fnd_file.put_line(FND_FILE.log, 'File Path is ' || l_directory_path );
        
        
        
    DELETE XX_AP_SCAN_DIR_LIST ;
  
    
  
  
  
  fnd_file.put_line(FND_FILE.log, 'call_dir_list');
  get_dir_list( l_directory_path );
  fnd_file.put_line(FND_FILE.log, 'call_dir_list completed');
  
  SELECT COUNT(*) 
  INTO l_invoice_detected 
  FROM XX_AP_SCAN_DIR_LIST ;
  
  fnd_file.put_line(FND_FILE.log, 'Number of scans detected is '|| l_invoice_detected);
  
  
  --Create Invoice Batch
  if l_invoice_detected != 0
  then
   SELECT  ap_batches_s.nextval
    INTO    l_batch_id
    FROM    sys.dual;
    
    INSERT INTO ap_batches_all(
          batch_id,
          batch_name,
          batch_date,
          org_id,
          attribute2,
          last_update_date,
          last_updated_by,
          control_invoice_count,
          creation_date,
          created_by)
  VALUES(
          l_batch_id,
          'SSC' || l_batch_id,
          TRUNC(SYSDATE),
          L_OP_UNIT,
          'Y',
          SYSDATE,
          l_user_id,
          l_invoice_detected ,
          SYSDATE,
          l_user_id);
    
  
    
 End if ;   
  
  -----------------------------------------------------------------------
  --Now we're going to load the files detected by the Java program
  -----------------------------------------------------------------------
  OPEN XX_LOAD_SCANS;
  LOOP
    --fnd_file.put_line(FND_FILE.output, 'cursor opened');
    FETCH XX_LOAD_SCANS
    INTO l_CPO;
    EXIT WHEN XX_LOAD_SCANS%notfound;
    
    fnd_file.put_line(FND_FILE.log, 'File Found! ' || l_CPO);
    SELECT filename
    INTO vfilename
    FROM XX_AP_SCAN_DIR_LIST
    WHERE filename = l_CPO;
  
  
    SELECT MAX(scan_id) + 1
    INTO l_next_scan_id
    FROM XX.XXAP_SCAN;
    
    IF l_next_scan_id IS NULL THEN
        l_next_scan_id  := 1;
    END IF;
    
    
    INSERT INTO XX.XXAP_SCAN
      ( batch_id,
        scan_id,
        org_id,
        created_date,
        scan_blob
      )
      VALUES
      ( l_batch_id,
        l_next_scan_id ,
        L_OP_UNIT,
        sysdate,
        empty_blob()
      )
    RETURNING scan_blob
    INTO b_lob;
    
    
    --Get Directory Path
    SELECT directory_name
    into L_BF_DIR
    FROM all_directories
    where directory_path = l_directory_path;
    
    
    f_lob := BFILENAME  ( L_BF_DIR ,vfilename   );
    
    FND_FILE.put_line(    FND_FILE.log, 'File DIR is '|| l_directory_path);
    FND_FILE.put_line (  FND_FILE.output, '   ')  ;
    
    dbms_lob.open(f_lob,dbms_lob.file_readonly  );
    dbms_lob.loadfromfile ( b_lob,f_lob,dbms_lob.getlength(f_lob));
    
    dbms_lob.fileclose( f_lob );
    
    tt_test := DBMS_LOB.GETLENGTH(b_lob ) ;
    FND_FILE.put_line( FND_FILE.log, 'File length is '|| tt_test )   ;
    
    COMMIT;
    
    --utl_file.fremove then deletes the file
    utl_file.fremove ( L_BF_DIR , vfilename);
  END LOOP;
  CLOSE XX_LOAD_SCANS;
  -----------------------------------------------------------------------
  -----------------------------------------------------------------------
  --The AP Batch needs to be created here
  -----------------------------------------------------------------------
  -----------------------------------------------------------------------
  /*At the end opf the process, a java package is called in order to delete all
  files from the inbound location
  fnd_file.put_line(FND_FILE.log, 'Calling Java Deletion Process');
  strExt := '.tif';
  strFolder := l_directory_path;
  call_DirKill (strFolder , strExt );
  fnd_file.put_line(FND_FILE.log, 'Java Deletion Process Complete');
  */
  ---------------------------------------------------------------------------
  ---------------------------------------------------------------------------
  DELETE XX_AP_SCAN_DIR_LIST ;
  ---------------------------------------------------------------------------
  ---------------------------------------------------------------------------

OPEN PROCESS_CHANGED_SCAN_ORG;
  LOOP
    FETCH PROCESS_CHANGED_SCAN_ORG
    INTO  l_changed_Scan_id,
          l_changed_Scan_blob,
          l_new_org_id  
    ;
    EXIT WHEN PROCESS_CHANGED_SCAN_ORG%notfound;
    
    
    SELECT  ap_batches_s.nextval
    INTO    l_batch_id
    FROM    sys.dual;
    
    INSERT INTO ap_batches_all(
          batch_id,
          batch_name,
          batch_date,
          org_id,
          last_update_date,
          last_updated_by,
          control_invoice_count,
          creation_date,
          created_by)
  VALUES(
          l_batch_id,
          'SSC' || l_batch_id,
          TRUNC(SYSDATE),
          l_new_org_id,
          SYSDATE,
          l_user_id,
          1 ,
          SYSDATE,
          l_user_id);
          
          
    SELECT MAX(scan_id) + 1
    INTO l_next_scan_id
    FROM XX.XXAP_SCAN;
  
  insert  INTO XX.XXAP_SCAN
      (
        batch_id,
        scan_id,
        org_id,
        created_date,
        scan_blob
        )
      VALUES(
      l_batch_id,
      l_next_scan_id,
      l_new_org_id,
      SYSDATE,
      l_changed_Scan_blob
      );
      
      
      update XX.XXAP_SCAN
      set  new_scan_id = l_next_scan_id
      where scan_id = l_changed_Scan_id;

    
    
    
  END LOOP;
  CLOSE PROCESS_CHANGED_SCAN_ORG;
    
    
  END LOOP;
  CLOSE PROCESS_OU;




EXCEPTION
WHEN No_invoices THEN
  fnd_file.put_line(FND_FILE.output, 'No invoices were detected for processing, a batch has not been created Invoice Count = ' || l_inbound);
  retcode := 1;
END p_create;
END XX_BATCH_CREATE_PKG;
