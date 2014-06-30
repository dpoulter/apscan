create or replace 
PACKAGE BODY xxap_scanned_inv_img_pkg  
AS
--
-- Constants
--
gc_package_name CONSTANT VARCHAR2(30) := 'XXAP_SCANNED_INV_IMG_PKG';
gc_application_id 	 CONSTANT NUMBER 	:= 20031;
gc_ame_trans_type CONSTANT VARCHAR2(30) := 'XX_SII';

/* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : XXAP_SCANNED_INV_IMG_PKG
 * Description        : Package to used for processing of Scanned Invoice Images
 * Created by         : V Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
*/
-------------------------------------------------------------------------------
-- Uses fnd_log
--
-------------------------------------------------------------------------------
PROCEDURE log(p_log_level   IN NUMBER 
             ,p_method_name IN VARCHAR2 
             ,p_message     IN VARCHAR2)
IS 
l_debug_level number:=FND_LOG.G_CURRENT_RUNTIME_LEVEL; 
l_statement_level number:=FND_LOG.LEVEL_STATEMENT; 
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
--IF(l_statement_level >= l_debug_level ) 
--THEN 
 /*   xx_appl_common_pkg.write_LOG( 
                            p_pkg => gc_package_name,
                            p_proc => p_method_name,
                            p_msg  => p_message,
                            p_conc_log => false); */
    
    insert into test_log (v_message, timestamp)
       values 
       (p_method_name || ' '|| p_message,sysdate);
       
    COMMIT;
    --fnd_log.string(p_log_level, gc_package_name || '.'  || p_method_name, p_message);
--END IF;
END log;
-------------------
FUNCTION get_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN VARCHAR2, p_session_id IN VARCHAR2 ) 
RETURN VARCHAR2
IS
lv_ebs_session_id VARCHAR2(150) := NULL;
BEGIN
   SELECT ebs_session_id  INTO lv_ebs_session_id
   FROM xx.XXAP_EBS_SESSIONS
   WHERE apex_app_id = p_app_id
     AND user_id = p_user_id
     AND session_id = p_session_id;
RETURN lv_ebs_session_id;
EXCEPTION 
WHEN NO_DATA_FOUND
THEN
  log(4,'get_ebs_session_id', 'no data found ');
  RETURN null;   
WHEN OTHERS 
THEN 
   log(4,'get_ebs_session_id', substr(sqlerrm,1,400));
   RETURN null;   
END get_ebs_session_id;
-------------------
FUNCTION get_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN VARCHAR2)
RETURN VARCHAR2
IS 
lv_ebs_session_id VARCHAR2(150) := NULL;
lv_session VARCHAR2(150);
BEGIN
   SELECT s.apex_app_id||s.user_id||s.session_id||s.ebs_session_id  INTO lv_ebs_session_id
   FROM xx.XXAP_EBS_SESSIONS s
   WHERE s.apex_app_id = p_app_id
     AND s.user_id = p_user_id
     AND s.ebs_session_id = (SELECT max(s1.ebs_session_id) 
                             FROM xx.XXAP_EBS_SESSIONS s1
                             WHERE s1.apex_app_id = p_app_id
                             AND   s1.user_id = p_user_id
                             GROUP BY s1.apex_app_id, s1.user_id); 
log(1,'ov get_ebs_session_id: ', 'rec found ' || lv_ebs_session_id);
RETURN lv_ebs_session_id;
EXCEPTION 
WHEN NO_DATA_FOUND
THEN
  log(4,'ov get_ebs_session_id', 'no data found ');
  RETURN null;   
WHEN OTHERS 
THEN 
   log(4,'ov get_ebs_session_id ', substr(sqlerrm,1,400));
   RETURN null;   
END get_ebs_session_id;
--
FUNCTION ins_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN NUMBER, p_session_id IN NUMBER)
RETURN VARCHAR2
IS
lv_ebs_session_id VARCHAR2(150) := NULL;
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
   INSERT INTO XXAP_EBS_SESSIONS
   (APEX_APP_ID ,
    USER_ID   ,
    SESSION_ID, 
    EBS_SESSION_ID)
    VALUES 
    (p_app_id,
     p_user_id,
     p_session_id ,
     to_char(XXAP_SII_OPEN_IMAGE_SEQ.nextval))
     RETURNING apex_app_id||user_id||session_id||ebs_session_id INTO lv_ebs_session_id;
     COMMIT;
     log(1,'ins_ebs_session_id: ', 'record inserted: ' || lv_ebs_session_id);
     RETURN lv_ebs_session_id;
EXCEPTION 
WHEN OTHERS 
THEN 
   log(4,'ins_ebs_session_id' , substr(sqlerrm,1,400));
   RETURN NULL;
END ins_ebs_session_id;
--
FUNCTION del_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN NUMBER, p_ebs_session_id IN VARCHAR2)
RETURN BOOLEAN
IS
PRAGMA AUTONOMOUS_TRANSACTION;
lv_rowcount NUMBER;
BEGIN
    log(1,'del_ebs_session_id: deletion for : ',  p_ebs_session_id);
   DELETE FROM XXAP_EBS_SESSIONS
   WHERE APEX_APP_ID = p_app_id
   AND USER_ID = p_user_id 
   AND apex_app_id||user_id||session_id||ebs_session_id = p_ebs_session_id;
   lv_rowcount := sql%rowcount;
   COMMIT;
   log(1,'del_ebs_session_id: deleted for : ' || p_ebs_session_id, 'rec count = '||lv_rowcount);
   RETURN TRUE;
EXCEPTION 
WHEN OTHERS 
THEN 
   log(4,'del_ebs_session_id' , substr(sqlerrm,1,400));
   RETURN FALSE; 
END del_ebs_session_id;
-----------------------------------------------------------------------
FUNCTION valid_org (p_org_id IN hr_all_organization_units.attribute6%TYPE)
RETURN VARCHAR2
IS
lv_org_name VARCHAR2(400);
BEGIN
   SELECT name
   INTO lv_org_name
   FROM hr_all_organization_units
   WHERE organization_id = p_org_id;
RETURN lv_org_name;
EXCEPTION 
WHEN NO_DATA_FOUND 
THEN 
   RETURN 'NOT FOUND';
WHEN OTHERS 
THEN 
   log(4,'valid_org' ,substr(sqlerrm,1,400));
   RETURN 'NOT FOUND';   
END VALID_ORG ;
-------------------------------------------------
PROCEDURE xxap_get_event_subs (p_item_type IN  VARCHAR2,
                            p_item_key  IN  VARCHAR2,
                            p_actid     IN  NUMBER,
                            p_funcmode  IN  VARCHAR2,
                            p_result    OUT NOCOPY VARCHAR2) 
IS
CURSOR c_get_sii (p_sii_id IN xxap_scanned_inv_image_qs.id%TYPE)
IS 
SELECT *
FROM xxap_scanned_inv_image_qs
WHERE id = p_sii_id;
--
lv_sii_rec c_get_sii%ROWTYPE;
lv_event_t wf_event_t;
lv_user_id                NUMBER;
lv_sii_id                 NUMBER;
lv_exception_desc         VARCHAR2(100); 
lv_org_name               VARCHAR2(100); 
lv_entity_no             NUMBER;
lv_username               VARCHAR2(100); 
e_event_fail              EXCEPTION;
--
v_pos number;
BEGIN
   log(1,'xxap_get_event_subs' ,'ENTRY POINT'   );
   IF (p_funcmode = 'RUN')
THEN

  lv_event_t := wf_engine.GetItemAttrEvent( p_item_type ,
                                            p_item_key,
                                            'XX_EVT_MSG');

  --log(1,'xxap_get_event_subs ' ,'ap user id = ' || lv_event_t.getvalueforparameter ('AP_USER_ID') );
  lv_user_id := to_number (lv_event_t.getvalueforparameter ('AP_USER_ID'));
  -- log(1,'xxap_get_event_subs ' ,'sii_id = ' || lv_event_t.getvalueforparameter ('SII_ID') );  
  lv_sii_id :=  to_number (lv_event_t.getvalueforparameter ('SII_ID'));
  IF lv_sii_id IS NULL
  THEN 
     RAISE e_event_fail;
  END IF;
  
  OPEN c_get_sii (lv_sii_id);
  FETCH c_get_sii INTO lv_sii_rec;
  CLOSE c_get_sii;

  SELECT  description INTO lv_exception_desc
  FROM fnd_lookup_values
  WHERE  lookup_type = 'XXAP_SCANNED_INV_EXCEPTIONS'
  AND lookup_code = to_char(lv_sii_rec.exception_code);

  lv_username := xx_appl_common_pkg.get_user_name(lv_user_id); 
 
  SELECT attribute6, name 
  INTO   lv_entity_no , lv_org_name
  FROM hr_all_organization_units
  WHERE organization_id = lv_sii_rec.org_id;

  wf_engine.SetItemAttrText(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'SII_FILENAME',
                            avalue     => lv_sii_rec.file_name);
                       
  wf_engine.SetItemAttrDate(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'SII_SCANNED_DATE',
                            avalue     => lv_sii_rec.scanned_date);
                        
  wf_engine.SetItemAttrText(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'AP_USERNAME',
                            avalue     => lv_username);
                          
  wf_engine.SetItemAttrText(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'ORG_NAME',
                            avalue     => lv_org_name);
                            
  wf_engine.SetItemattrNumber(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'ENTITY_NO',
                            avalue     => lv_entity_no);
                      
  wf_engine.SetItemattrNumber(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'SII_BATCH_SEQ',
                            avalue     => lv_sii_rec.scanned_seq_no);
                                             
  wf_engine.SetitemAttrText(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'SII_EXCEPTION_TYPE',
                            avalue     => lv_exception_desc);
                            
  wf_engine.SetItemAttrText(itemtype   => p_item_type ,
                            itemkey    => p_item_key,
                            aname      => 'SII_EXCEPTION_COMMENT',
                            avalue     => lv_sii_rec.message); 
    
end if;

IF (p_funcmode = 'CANCEL') THEN  
  NULL;
end if;
   log(1,'xxap_get_event_subs ' ,'Success ' ); 
p_result := wf_engine.eng_completed||':'||wf_engine.eng_null;

EXCEPTION
WHEN e_event_fail
THEN 
        log(1,'xxap_get_event_subs ' ,'event fail ' );
  wf_core.context(
        pkg_name  => 'XXAP_SCANNED_INV_IMG_PKG',
        proc_name => 'xxap_get_event_subs',
        arg1      => p_item_type,
        arg2      => NULL,
        arg3      => NULL,
        arg4      => NULL,
        arg5      => 'Event fail : ' || sqlerrm);
   
WHEN OTHERS
THEN 
  log(1,'xxap_get_event_subs ' ,substr(sqlerrm,1,200) );
  wf_core.context(
        pkg_name  => 'XXAP_SCANNED_INV_IMG_PKG',
        proc_name => 'xxap_get_event_subs',
        arg1      => p_item_type,
        arg2      => NULL,
        arg3      => NULL,
        arg4      => NULL,
        arg5      => sqlerrm);
      
 -- errbuf := 'Raise Excp failure ';
END xxap_get_event_subs;
-----------
PROCEDURE xxap_raise_excp_event  (p_sii_rec IN xxap_scanned_inv_image_qs%ROWTYPE, 
                                  retcode OUT NUMBER, 
                                  errbuf OUT VARCHAR2)
/* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : xxap_raise_excp_event
 * Description        : Procedure called to RAISE Exception Business Event            
 *                       
 * Created by         : V Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
 */
IS
--
lv_user_id    VARCHAR2(40);
lv_parameter_list wf_parameter_list_t;
lv_event_key  NUMBER;
lv_sii_rec    xxap_scanned_inv_image_qs%ROWTYPE;
BEGIN
lv_user_id := nvl(fnd_profile.value('USER_ID'),5); 
lv_sii_rec := p_sii_rec;
--
log(4,' in raise excp ', 'id = ' || lv_sii_rec.id || ' user ' ||  lv_user_id );
lv_parameter_list := wf_parameter_list_t
      ( wf_parameter_t ('AP_USER_ID',lv_user_id),
        wf_parameter_t ('SII_ID', lv_sii_rec.id)
      );
lv_event_key := XXAP_SII_EXCP_EVENT_SEQ.nextval;
log(4,' about to raise  ', null);
wf_event.raise( p_event_name => 'oracle.apps.xx.xxap_sii_excps',  
                p_event_key => lv_event_key,
                p_parameters => lv_parameter_list);
EXCEPTION
WHEN OTHERS
THEN 
log(4,' in raise excp ERROR ! ', substr(sqlerrm,1,200));
  wf_core.context(
        pkg_name  => 'XXAP_SCANNED_INV_IMG_PKG',
        proc_name => 'xxap_raise_excp_event',
        arg1      => 'oracle.apps.xx.xxap_sii_excps',
        arg2      => NULL,
        arg3      => NULL,
        arg4      => NULL,
        arg5      => sqlerrm);
  retcode := 2;
  errbuf := 'Raise Excp failure ';
END xxap_raise_excp_event;
--
 /* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : xxap_get_approvver
 * Description        : Procedure called from Workflow to find manager of Ap User  
 *                      and set wf item attributes for Notification
 *                       
 * Created by         : V Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
 */                       
PROCEDURE xxap_get_approver (p_item_type IN  VARCHAR2,
                            p_item_key  IN  VARCHAR2,
                            p_actid     IN  NUMBER,
                            p_funcmode  IN  VARCHAR2,
                            p_result    OUT NOCOPY VARCHAR2) 
IS
lv_item_type      VARCHAR2(40) := 'XXAP_SII_EXCP';
lv_proc           VARCHAR2(30) := 'xxa_get_approver';
lv_trx_type       VARCHAR2(30);
lv_user_name fnd_user.user_name%type;
lv_approver_id    fnd_user.user_id%type;
lv_employee_id    NUMBER(15);
lv_dbg_mesg       VARCHAR2(4000);
lv_context        VARCHAR2 (2);
--
FUNCTION set_context( i_user_name    IN  VARCHAR2
                     ,i_resp_name    IN  VARCHAR2
                     ,i_org_id       IN  NUMBER)
RETURN VARCHAR2
IS
lv_user_id             NUMBER;
lv_resp_id             NUMBER;
lv_resp_appl_id        NUMBER;
lv_lang                VARCHAR2(100);
lv_session_lang        VARCHAR2(100):=fnd_global.current_language;
lv_return              VARCHAR2(10):='T';
lv_nls_lang            VARCHAR2(100);
lv_org_id              NUMBER:=i_org_id;
/* Cursor to get the user id information based on the input user name */
CURSOR cur_user
IS
    SELECT     user_id
    FROM       fnd_user
    WHERE      user_name  =  i_user_name;
/* Cursor to get the responsibility information */
CURSOR cur_resp
IS
    SELECT     responsibility_id
              ,application_id
              ,language
    FROM       fnd_responsibility_tl
    WHERE      responsibility_name  =  i_resp_name;
/* Cursor to get the nls language information for setting the language context */
CURSOR cur_lang(p_lang_code VARCHAR2)
IS
    SELECT    nls_language
    FROM      fnd_languages
    WHERE     language_code  = p_lang_code; 
BEGIN
    /* To get the user id details */
    OPEN cur_user ;
    FETCH cur_user INTO lv_user_id;
    IF cur_user%NOTFOUND
    THEN
        lv_return:='F';    
    END IF; --IF cur_user%NOTFOUND
    CLOSE cur_user;
    /* To get the responsibility and responsibility application id */
    OPEN cur_resp;
    FETCH cur_resp INTO lv_resp_id, lv_resp_appl_id, lv_lang;
    IF cur_resp%NOTFOUND
    THEN
        lv_return:='F';      
    END IF; --IF cur_resp%NOTFOUND
    CLOSE cur_resp;

    /* Setting the oracle applications context for the particular session */
    fnd_global.apps_initialize ( lv_user_id
                                , lv_resp_id
                                , lv_resp_appl_id);
    /* Setting the org context for the particular session */
    mo_global.set_policy_context('S',lv_org_id);
    /* setting the nls context for the particular session */
    IF lv_session_lang != lv_lang
    THEN
        OPEN cur_lang(lv_lang);
        FETCH cur_lang INTO lv_nls_lang;
        CLOSE cur_lang;
        fnd_global.set_nls_context(lv_nls_lang);
    END IF; --IF v_session_lang != v_lang
    RETURN lv_return;
EXCEPTION
WHEN OTHERS THEN
    RETURN 'F';
END set_context;

/*************************************************************************/
-- Written For AME Integration
--
-- This procedure is called to find the next approver for the transaction
-- type. It also stores the person retrieved in a workflow attribute
-- appropriately named PERSON_ID.  It also cals getemployeeinfo to set some
-- attributes to make sure notifications are sent smoothly to this approver.
--
PROCEDURE FindNextApprover (
  p_item_type    IN VARCHAR2,
  p_item_key     IN VARCHAR2,
  p_ame_trx_type IN VARCHAR2,
  x_approver_user_id OUT NOCOPY NUMBER,
  x_approver_employee_id OUT NOCOPY NUMBER) 
IS
  lv_next_approver        ame_util.approverrecord;
  lv_admin_approver       ame_util.approverRecord;
  lv_approver_user_id     NUMBER DEFAULT NULL;
  lv_approver_employee_id NUMBER;
  lv_error_message        fnd_new_messages.message_text%TYPE;
  lv_dbg_mesg             varchar2(4000);
BEGIN
    ----------------------------------------------------------
    --g_debug_mesg := 'Entered FINDNEXTAPPROVER';
    --IF PG_DEBUG in ('Y', 'C') THEN
    --   arp_standard.debug('FindNextApprover: ' || g_debug_mesg);
    --END IF;
    ----------------------------------------------------------
    ame_api.getNextApprover(
      applicationidin   => gc_application_id,
      transactionidin   => p_item_key,
      transactiontypein => p_ame_trx_type,
      nextapproverout   => lv_next_approver);           
    --Write log message
    lv_dbg_mesg := 'AME call to getNextApprover returned: '||lv_next_approver.person_id;
    log(4,lv_dbg_mesg, null);
    ------------------------------------------------------------------------
    --g_debug_mesg := 'AME call to getNextApprover returned: ';
    --IF PG_DEBUG in ('Y', 'C') THEN
    --   arp_standard.debug('FindNextAprrover: ' || g_debug_mesg);
    --END IF;
    ------------------------------------------------------------------------
    IF (lv_next_approver.person_id IS NULL) THEN
      IF (lv_next_approver.user_id IS NULL) THEN
        -- no more approvers left
        RETURN;
      ELSE
        lv_approver_user_id := lv_next_approver.user_id;
        lv_approver_employee_id := xx_appl_common_pkg.get_employee_id(lv_approver_user_id);
      END IF;
    ELSE
      -- check if the person id matches admin person id
      -- which means there was an error retrieving
      -- the approver and this should be reported.
      ame_api.getadminapprover(adminapproverout => lv_admin_approver);
      IF lv_next_approver.person_id = lv_admin_approver.person_id THEN
        Fnd_message.set_name(
          application => 'AR',
          name        => 'AR_CMWF_AME_NO_APPROVER_MESG');
        lv_error_message := fnd_message.get;
        app_exception.raise_exception;
      ELSE
        -- the person id returned is a valid approver.
        lv_approver_employee_id := lv_next_approver.person_id;
        lv_approver_user_id := xx_appl_common_pkg.get_user_id(
          p_employee_id => lv_approver_employee_id);
      END IF;
    END IF;
    x_approver_user_id := lv_approver_user_id;
    x_approver_employee_id := lv_approver_employee_id;
  EXCEPTION
    WHEN OTHERS THEN
      wf_core.context(
        pkg_name  => 'XXAP_SCANNED_INV_IMG_PKG',
        proc_name => 'FINDNEXTAPPROVER',
        arg1      => p_item_type,
        arg2      => p_item_key,
        arg3      => NULL,
        arg4      => NULL,
        arg5      => sqlerrm);
      RAISE;
END FindNextApprover;
-- MAIN LOGIC xxap_get_approver
BEGIN
-- RUN mode - normal process execution
--
IF (p_funcmode = 'RUN')
THEN
  -- Setting the context ----
  -- lv_context :=
    --          set_context ('POULTD10', 'iICL Finance Super User', 2038);
  /* IF lv_context = 'F'
   THEN
      DBMS_OUTPUT.put_line ('Error while setting the context');
   END IF; 
   */
     --Get Transaction Type
    -- lv_trx_type := wf_engine.GetItemAttrText (itemtype   => p_item_type,
    -- --                                          itemkey    => p_item_key,
      --                                         aname      => 'MDM_TRX_TYPE');
  --
     --Get Approver
  /*   open c_approver(lv_trx_type);
     fetch c_approver into lv_approver_id, lv_user_name;
     close c_approver;
    */
    --Write log message
    lv_dbg_mesg := 'Call AME to get approver';
    log(4,lv_dbg_mesg, null);
     --Call AME to get approver
   /* FindNextApprover(
      p_item_type    => p_item_type,
      p_item_key     => p_item_key,
      p_ame_trx_type => gc_ame_trans_type,
      x_approver_user_id => lv_approver_id,
      x_approver_employee_id => lv_employee_id);   
   */
     --Get User Name
     lv_approver_id := 13494;
    lv_user_name := xx_appl_common_pkg.get_user_name(lv_approver_id);   
    --Write log message
    lv_dbg_mesg := 'lv_approver_id => '|| lv_approver_id
                  ||' lv_employee_id=> '|| lv_employee_id
                  ||'lv_user_name => '|| lv_user_name;
    log(4,lv_dbg_mesg, null);  
             
     --Set Approver in Worfklow
    wf_engine.setitemattrnumber(p_item_type , p_item_key,'AP_MANAGER_ID',lv_approver_id);
    wf_engine.setitemattrtext(p_item_type  , p_item_key,'AP_MANAGERS_NAME',lv_user_name); 
    p_result := 'COMPLETE:';
  END IF; -- END of run mode
--
-- CANCEL mode
--
-- This is an event point is called with the effect of the activity must
-- be undone, for example when a process is reset to an earlier point
-- due to a loop back.
--
  IF (p_funcmode = 'CANCEL')
  THEN
-- no result needed
      p_result := 'COMPLETE:';
      RETURN;
   END IF;
--
-- Other execution modes may be created in the future.  Your
-- activity will indicate that it does not implement a mode
-- by RETURNing NULL
--
  p_result := 'COMPLETE:';
  RETURN;
  EXCEPTION
    WHEN OTHERS THEN
      wf_core.context(
        pkg_name  => gc_package_name,
        proc_name => lv_proc,
        arg1      => p_item_type,
        arg2      => p_item_key,
        arg3      => p_funcmode,
        arg4      => to_char(p_actid),
        arg5      => sqlerrm);
      RAISE;    
end xxap_get_Approver;
-- 
PROCEDURE xxap_ins_sii_dets (p_file_id IN NUMBER)
IS 
/* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : xxap_ins_sii_dets
 * Description        : Procedure called to insert to Scanned Invoice Images table
 *                      directly from FNDFGU with file_id as paramaeter
 * Created by         : V Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
 */
lv_filename          fnd_lobs.file_name%TYPE := NULL;
lv_upload_date       DATE;
lv_file_ext          VARCHAR2(10);
lv_pk1_value         NUMBER;
--
lv_bseq              xxap_scanned_inv_image_qs.scanned_seq_no%TYPE := NULL;
lv_seq_num 	         NUMBER;
lv_org               xxap_scanned_inv_image_qs.org_id%TYPE       := NULL;
lv_scanned_date      xxap_scanned_inv_image_qs.scanned_date%TYPE := NULL;     
lv_status            xxap_scanned_inv_image_qs.status%TYPE       := NULL;                   
lv_message           xxap_scanned_inv_image_qs.message%TYPE      := NULL;           
lv_excp_code         xxap_scanned_inv_image_qs.exception_code%TYPE := NULL;
lv_image_attrib        CLOB;
lv_image_data        BLOB;
---
e_invalid_file_fmt   EXCEPTION;
e_invalid_file_id    EXCEPTION;
e_invalid_org        EXCEPTION;
e_invalid_conv        EXCEPTION;
v_pos number := 0;
---
BEGIN
-- validate file details 
  BEGIN
  -- single record query
  -- convert tif to image for display in apex via function blob2clob
  SELECT file_name , 
       upload_date,
       file_data,
       xxap_blob2clob(file_data)
  INTO lv_filename,  
       lv_upload_date ,
       lv_image_data,
       lv_image_attrib   
  FROM fnd_lobs
  WHERE file_id = p_file_id 
  AND program_name = 'FNDGFU'
  FOR UPDATE;
--
  ordsys.ordimage.process(lv_image_data, 'fileFormat=JPEG');
  ordsys.ordimage.getproperties(lv_image_data, lv_image_attrib);

  UPDATE fnd_lobs
  SET    file_data = lv_image_data
  WHERE  file_id  = p_file_id;

 -- COMMIT;
-- 
  lv_scanned_date := to_date(substr(lv_filename,9, 14),'yyyymmdd_hh24miss');
  lv_bseq := to_number(substr(lv_filename,25, 4));
  lv_file_ext := substr(lv_filename,instr(lv_filename,'.') +1);
  lv_org := to_number(substr(lv_filename, 5,3));
  -- strip org id from filename and validate it
  IF valid_org(lv_org) = 'NOT FOUND' 
  THEN 
     lv_message := 'Invalid Organization : '|| lv_org ;
     RAISE e_invalid_org; 
  END IF;
  -- substr filename in format SII_nnn_yyyyddmm_hh24miss_bseq.
  --ddmmyyyy24hhmiss = timestamp in 24hour format eg 20131013_221501
  --bseq = sequence number within batch   
  IF LENGTH(lv_filename) != 32
  THEN 
     RAISE e_invalid_file_fmt;
  END IF;
-- file name components valid
  lv_status := 'LOADED';
  EXCEPTION 
  -- if exceptions raised on validation raise exception on record for further investigation
  WHEN e_invalid_org
  THEN
     lv_excp_code := 50; 
     lv_status := 'EXCEPTION';
  WHEN e_invalid_file_fmt
  THEN 
    lv_message := 'Invalid format for filename';
     lv_excp_code := 60; 
     lv_status := 'EXCEPTION';
  WHEN NO_DATA_FOUND 
  THEN 
    RAISE e_invalid_file_id;  
  WHEN OTHERS -- return error
  THEN 
     lv_message := 'Invalid format for filename: ' || substr(sqlerrm,1,100);
     lv_excp_code := 60; 
     lv_status := 'EXCEPTION';
  END;  
--  
INSERT INTO xxap_scanned_inv_image_qs
   (file_name   
    ,org_id    
    ,scanned_date    
    ,scanned_seq_no     
    ,status             
    ,file_id            
    ,message            
    ,exception_code     
    ,created_by         
    ,creation_date )
VALUES (lv_filename   
    ,lv_org 
    ,lv_scanned_date    
    ,lv_bseq     
    ,lv_status             
    ,p_file_id            
    ,lv_message            
    ,lv_excp_code           
    ,nvl(fnd_profile.value('USER_ID'),user)
    ,sysdate) ;
--
-- on completion
log(2, 'xxap_ins_sii_dets','Success');
EXCEPTION
WHEN e_invalid_file_id
THEN 
     log(4,'xxap_ins_sii_dets' ,'File Id passed from FNDGFU invalid');
WHEN OTHERS 
THEN
   log(4,'xxap_ins_sii_dets' , substr(sqlerrm,1,400));
END xxap_ins_sii_dets;
--   
PROCEDURE xxap_upd_sii_dets (p_mode IN PLS_INTEGER, 
                             p_sii_rec IN xxap_scanned_inv_image_qs%ROWTYPE, 
                             retcode OUT NUMBER, 
                             errbuf OUT VARCHAR2)
 
/* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : xxap_upd_sii_dets
 * Description        : Procedure called to update Scanned Invoice image record 
 *                      depending on mode called via Apex form on completion
 *                      Mode = 0 completion on Apex page with sucess record Invoice Id
 *                               and call attach doc procedure. 
 *                      Mode = 1 exception raised
 *                      Mode = 2 Status change to pending/opened.
 *                      mode = 3 Cancelled invoice - set invoice number = null           
 *                       
 * Created by         : V Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
 */
IS
lv_invoice_id AP_INVOICES_ALL.invoice_id%TYPE;
lv_sii_rec    xxap_scanned_inv_image_qs%ROWTYPE;
e_invoice_not_found     EXCEPTION;
e_document_attach_fail  EXCEPTION;
e_raise_excp_event_fail  EXCEPTION;
--
lv_retcode NUMBER := 0;
lv_errbuf VARCHAR2(400) := null;
BEGIN
lv_sii_rec := p_sii_rec;
-- mode =0 is completed at update of nvoice ; therefore invoice header should have been committed to db
IF p_mode = 0
THEN 
   BEGIN
   -- identify invoice by p_session_id = attribute20 on AP_INVOICE_ALL
   -- return invoice_id and suppliers invoice ref
   SELECT invoice_id, invoice_num
   INTO lv_sii_rec.invoice_id, lv_sii_rec.ext_invoice_ref
   FROM ap_invoices_all
   WHERE reference_2 = lv_sii_rec.ebs_session_id;
   EXCEPTION
   WHEN NO_DATA_FOUND
   THEN 
      lv_invoice_id := null;
      RAISE e_invoice_not_found;    
   END; -- find invoice   
   xxap_attach_sii_doc ( p_sii_rec => lv_sii_rec,
                         retcode => lv_retcode,
                         errbuf => lv_errbuf); 
   IF lv_retcode > 0
   THEN 
      RAISE e_document_attach_fail;
   END IF;
ELSIF p_mode = 1 --exception raised
THEN 
  log(2, 'xxap_upd_sii_dets: excp' || lv_sii_rec.exception_code ,'Raised');
  xxap_raise_excp_event (p_sii_rec => lv_sii_rec,
                          retcode => lv_retcode,
                          errbuf => lv_errbuf); 
  IF lv_retcode > 0
   THEN 
      RAISE e_raise_excp_event_fail;
  END IF; 
--ELSIF p_mode = 2 --Status change to supplier requested / abandoned / cancelled.
END IF;
-- update qs with altered state
UPDATE xxap_scanned_inv_image_qs
SET status = lv_sii_rec.status,
    message = CASE WHEN lv_sii_rec.message IS NULL THEN message ELSE message || ':' || lv_sii_rec.message END,
    exception_code = to_number(lv_sii_rec.exception_code),
    invoice_id = lv_sii_rec.invoice_id,
    ext_invoice_ref = lv_sii_rec.ext_invoice_ref,
    ebs_session_id = lv_sii_rec.ebs_session_id,
    last_update_by = lv_sii_rec.last_update_by ,
    last_update_date = sysdate
WHERE id = lv_sii_rec.id;

COMMIT; 
-- on completion
errbuf := null;
retcode := 0;
log(2, 'xxap_upd_sii_dets: mode ' || p_mode ,'Success');
COMMIT;
EXCEPTION
WHEN e_document_attach_fail
THEN 
   retcode := lv_retcode;
   errbuf := lv_errbuf;
   log(3,'xxap_upd_sii_dets: mode ' || p_mode , errbuf);
WHEN e_invoice_not_found
THEN 
   retcode := -99;
   errbuf := 'No Invoice record created in session: ' || lv_sii_rec.ebs_session_id ; 
   log(3,'xxap_upd_sii_dets: mode ' || p_mode , errbuf);
WHEN  e_raise_excp_event_fail
THEN 
   retcode := 2;
   errbuf := 'Raise Exception Event failed: ' || lv_sii_rec.ebs_session_id ; 
   log(3,'xxap_upd_sii_dets: mode ' || p_mode , errbuf);
WHEN OTHERS 
THEN
   retcode := 2;
   errbuf := substr(sqlerrm,1,400); 
   log(4,'xxap_upd_sii_dets: mode ' || p_mode , errbuf);
END xxap_upd_sii_dets;
--
PROCEDURE xxap_del_sii_dets (p_sii_rec IN xxap_scanned_inv_image_qs%ROWTYPE, retcode OUT NUMBER, errbuf OUT VARCHAR2)
IS 
BEGIN
-- dummy proc 
NULL;
-- on completion
errbuf := NULL;
retcode := 0;
log(2, 'xxap_del_sii_dets','Success');
EXCEPTION
WHEN OTHERS 
THEN
   retcode := 2;
   errbuf := substr(sqlerrm,1,400); 
   log(4,'xxap_del_sii_dets' , errbuf);
END xxap_del_sii_dets; 
---
PROCEDURE xxap_attach_sii_doc (p_sii_rec IN xxap_scanned_inv_image_qs%ROWTYPE,retcode OUT NUMBER, errbuf OUT VARCHAR2)
IS 
/* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : xxap_attach_sii_doc
 * Description        : Procedure called to attach Scanned Invoice Images to
 *                      fnd_attached documents via API for INvoice Id
                        called via Apex form on completion
 * Created by         : V Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
 */
lv_seq NUMBER;
v_attached_doc_id  NUMBER := 0;
BEGIN
SELECT nvl(max(seq_num),0) + 10 
INTO lv_seq
FROM   fnd_attached_documents
WHERE  pk1_value = p_sii_rec.invoice_id
AND    entity_name = 'AP_INVOICES';
-- use API to attach documen
log(1, 'xxap_attach_sii_dets','Pre Fnd Attach : File name = ' || to_char(p_sii_rec.file_name) );
FND_WEBATTCH.Add_Attachment(	seq_num => lv_seq,
	category_id		=> '1' ,
	document_description	=> 'SCANNED INVOICE' ,
	datatype_id	=>	'6',   -- image
	text	 =>	null,
	file_name =>	p_sii_rec.file_name,
	url	=>	null ,
	function_name	=> null	,
  entity_name  =>  'AP_INVOICES',
	pk1_value	=> to_char(p_sii_rec.invoice_id),
	pk2_value	=> null	,
	pk3_value	=> null	,
	pk4_value	=> null	,
	pk5_value	=> null	,
	media_id	=> p_sii_rec.file_id,
	user_id		=> '1' --to_char(nvl(fnd_profile.value('user_id'),user))
  );
-- on completion
log(1, 'xxap_attach_sii_dets','Post Fnd Attach: Success');   
EXCEPTION
WHEN OTHERS 
THEN
   retcode := 2;
   errbuf := substr(sqlerrm,1,200); 
   log(4,'xxap_attach_sii_doc', errbuf);
END xxap_attach_sii_doc; 
END xxap_scanned_inv_img_pkg;