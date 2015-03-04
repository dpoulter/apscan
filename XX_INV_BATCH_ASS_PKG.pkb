--------------------------------------------------------
--  DDL for Package Body XX_INV_BATCH_ASS_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "XX_INV_BATCH_ASS_PKG" 
AS
PROCEDURE p_create(           itemtype IN VARCHAR2,
                              itemkey  IN VARCHAR2,
                              actid    IN NUMBER,
                              funcmode IN VARCHAR2,
                              resultout OUT NOCOPY VARCHAR2 )
IS

  v_batch_total NUMBER;
  v_Batch_Name  VARCHAR2(50);
  l_rowid rowid;
  l_attached_document_id NUMBER;
  l_document_id          NUMBER;
  l_media_id             NUMBER; --this is the file_id from fnd_lobs, left null and populated from the API
  l_category_id          NUMBER := 1000475;
  l_pk1_value fnd_attached_documents.pk1_value%TYPE ; --Invoice ID
  l_description fnd_documents_tl.description%TYPE := 'Invoice Scan';
  l_filename fnd_documents_tl.file_name%TYPE      := 'Scanned Invoice';--File
  -- name for physical file
  l_seq_num NUMBER;
  l_inv_id  NUMBER;
  v_RSRec ap_invoices_all%ROWTYPE;


  l_scan_id number;
  l_batch_id number;
  l_invoice_id number;
  p_invoice_id number;
  l_blob blob;

  l_check number;

  CURSOR XX_GET_INVOICES_TO_MATCH(p_invoice_id in NUMBER)
  IS
          select sn.scan_id, inv.batch_id, inv.invoice_id, sn.scan_blob
          from XX.XXAP_SCAN sn, ap_invoices_all inv
          where sn.voucher_number = inv.DOC_SEQUENCE_VALUE
          and sn.batch_id = inv.batch_id
          and sn.voucher_number is not null
          and sn.scan_attached is null
          and inv.invoice_id = p_invoice_id;



BEGIN




--get the workflow invoice id
      p_invoice_id  := po_wf_util_pkg.GetItemAttrNumber ( itemtype => itemtype,
                                                          itemkey => itemkey,
                                                          aname => 'INVOICE_ID'
                                                          );


      select count(*)
      into l_check
      from FND_ATTACHED_DOCS_FORM_VL
      where category_id = 1000475
      and function_name = 'APXINWKB'
      and pk1_value = to_char(p_invoice_id);

      if l_check = 0 then


  OPEN XX_GET_INVOICES_TO_MATCH(p_invoice_id);
  LOOP
    fnd_file.put_line(FND_FILE.output, 'cursor opened');


    FETCH XX_GET_INVOICES_TO_MATCH
    INTO
    l_scan_id,
    l_batch_id,
    l_invoice_id,
    l_blob;


    EXIT  WHEN XX_GET_INVOICES_TO_MATCH%notfound;



            select FND_DOCUMENTS_S.nextval
             into l_document_id
             from dual;

             select FND_ATTACHED_DOCUMENTS_S.nextval
             into l_attached_document_id
             from dual;



        l_pk1_value := l_invoice_id;

          select nvl(max(seq_num),0) + 10
          into l_seq_num
          from fnd_attached_documents
          where pk1_value = l_pk1_value
          and entity_name = 'AP_INVOICES';




    fnd_file.put_line(FND_FILE.output, 'Scan ID = ' || l_scan_id);
    --get blob details for can






 --need to declare the media id here, is there a doc sequence for fnd_lobs??









    --Insert into documents table, should work fine with the declares
    fnd_documents_pkg.insert_row (    X_ROWID => l_rowid ,
                                      X_DOCUMENT_ID => l_document_id ,
                                      X_CREATION_DATE => sysdate ,
                                      X_CREATED_BY => fnd_profile.value('USER_ID') ,
                                      X_LAST_UPDATE_DATE => sysdate ,
                                      X_LAST_UPDATED_BY => fnd_profile.value('USER_ID') ,
                                      X_LAST_UPDATE_LOGIN => fnd_profile.value('LOGIN_ID') ,
                                      X_DATATYPE_ID => 6 ,--6 is file as in    -- document categories
                                      X_CATEGORY_ID => l_category_id ,
                                      X_SECURITY_TYPE => 1 ,
                                      X_PUBLISH_FLAG => 'Y' ,
                                      X_USAGE_TYPE => 'O' ,
                                      X_LANGUAGE => 'US' ,
                                      X_DESCRIPTION => l_description ,
                                      X_FILE_NAME => l_scan_id ,
                                      X_MEDIA_ID => l_media_id );




   /*
    --Insert into documents table, should work fine with the declares
    fnd_documents_pkg.insert_tl_row (   X_DOCUMENT_ID => l_document_id ,
                                        X_CREATION_DATE => sysdate ,
                                        X_CREATED_BY => fnd_profile.value('USER_ID') ,
                                        X_LAST_UPDATE_DATE => sysdate ,
                                        X_LAST_UPDATED_BY => fnd_profile.value( 'USER_ID') ,
                                        X_LAST_UPDATE_LOGIN => fnd_profile.value('LOGIN_ID') ,
                                        X_LANGUAGE => 'US' ,
                                        X_DESCRIPTION => 'Scan ID ' || l_scan_id ,
                                        X_TITLE => 'Scan ID ' || l_scan_id
    --, X_MEDIA_ID                     => l_media_id
                                     );

      */
    --Insert into documents table, should work fine with the declares
    fnd_attached_documents_pkg.insert_row   (   X_ROWID => l_rowid ,
                                                X_ATTACHED_DOCUMENT_ID => l_attached_document_id ,
                                                X_DOCUMENT_ID => l_document_id ,
                                                X_CREATION_DATE => sysdate ,
                                                X_CREATED_BY => fnd_profile.value('USER_ID') ,
                                                X_LAST_UPDATE_DATE => sysdate ,
                                                X_LAST_UPDATED_BY => fnd_profile.value('USER_ID') ,
                                                X_LAST_UPDATE_LOGIN => fnd_profile.value('LOGIN_ID') ,
                                                X_SEQ_NUM => l_seq_num ,
                                                X_ENTITY_NAME => 'AP_INVOICES' ,
                                                X_COLUMN1 => NULL ,
                                                X_PK1_VALUE => l_pk1_value ,
                                                X_PK2_VALUE => NULL ,
                                                X_PK3_VALUE => NULL ,
                                                X_PK4_VALUE => NULL ,
                                                X_PK5_VALUE => NULL ,
                                                X_AUTOMATICALLY_ADDED_FLAG => 'N' ,
                                                X_DATATYPE_ID => 6 ,
                                                X_CATEGORY_ID => l_category_id ,
                                                X_SECURITY_TYPE => 1 ,
                                                X_PUBLISH_FLAG => 'Y' ,
                                                X_LANGUAGE => 'US' ,
                                                X_DESCRIPTION => l_description ,
                                                X_FILE_NAME => l_filename ,
                                                X_MEDIA_ID => l_media_id
                                                );

    INSERT INTO     fnd_lobs (file_id
                   ,file_name
                   ,file_content_type
                   ,upload_date
                   ,expiration_date
                   ,program_name
                   ,program_tag
                   ,file_data
                   ,language
                   ,oracle_charset
                   ,file_format
                   )
                  values
                   (
                   l_media_id,
                   'Scanned_Image.pdf',
                   'application/pdf',
                   sysdate,
                   null,
                   'FNDATTCH',
                   null,
                   l_blob, --l_blob_data,
                   'US',
                   'UTF8',
                   'BINARY'
                   ) ;
                   --returning file_data into l_blob;


    COMMIT;
  END LOOP;
  CLOSE XX_GET_INVOICES_TO_MATCH;

  end if;
END p_create;
END XX_INV_BATCH_ASS_PKG;
