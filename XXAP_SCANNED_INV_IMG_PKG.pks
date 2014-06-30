create or replace 
PACKAGE xxap_scanned_inv_img_pkg AUTHID CURRENT_USER 
AS
/* ******************************************************************************
 *                           - COPYRIGHT NOTICE -
 *
 *******************************************************************************
 *******************************************************************************
 * Name               : XXAP_SCANNED_INV_IMG_PKG
 * Description        : Package to be used for processing of Scanned Invoice Images
 * Created by         : V P Ferguson
 * Creation Date      : 20-AUG-2013
 * Related documents  : MD.050 APPLICATION EXTENSION TECHNICAL DESIGN
 * Version            : 1.0
 * Change History:
 *==============================================================================
 * Date         |Name           |Remarks
 *==============================================================================
 * 17-Oct-2013  | V Ferguson    | Intial Version
 */
gv_mdm_request_id NUMBER;
--
FUNCTION get_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN VARCHAR2, p_session_id IN VARCHAR2 ) RETURN VARCHAR2;
FUNCTION get_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN VARCHAR2) RETURN VARCHAR2;
--
FUNCTION  ins_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN NUMBER, p_session_id IN NUMBER) RETURN VARCHAR2;
--
FUNCTION del_ebs_session_id (p_app_id IN VARCHAR2, p_user_id IN NUMBER, p_ebs_session_id IN VARCHAR2) RETURN BOOLEAN;
--
PROCEDURE xxap_get_event_subs (p_item_type IN  VARCHAR2,
                            p_item_key  IN  VARCHAR2,
                            p_actid     IN  NUMBER,
                            p_funcmode  IN  VARCHAR2,
                            p_result    OUT NOCOPY VARCHAR2) ;
--
PROCEDURE xxap_get_approver (p_item_type IN  VARCHAR2,
                            p_item_key  IN  VARCHAR2,
                            p_actid     IN  NUMBER,
                            p_funcmode  IN  VARCHAR2,
                            p_result    OUT NOCOPY VARCHAR2);
--                            
-- insert to table XXAP_SCANNED_INV_IMAGE_QS
PROCEDURE xxap_ins_sii_dets (p_file_id IN NUMBER);

-- update table XXAP_SCANNED_INV_IMAGE_QS
PROCEDURE xxap_upd_sii_dets (p_mode IN PLS_INTEGER, p_sii_rec IN xxap_scanned_inv_image_qs%ROWTYPE, retcode OUT NUMBER, errbuf OUT VARCHAR2);
--
PROCEDURE xxap_attach_sii_doc (p_sii_rec IN xxap_scanned_inv_image_qs%ROWTYPE,retcode OUT NUMBER, errbuf OUT VARCHAR2);

END xxap_scanned_inv_img_pkg;