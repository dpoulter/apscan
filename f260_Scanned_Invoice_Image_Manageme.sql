set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end;
/
 
 
--application/set_environment
prompt  APPLICATION 260 - Scanned Invoice Image Management
--
-- Application Export:
--   Application:     260
--   Name:            Scanned Invoice Image Management
--   Date and Time:   11:54 Tuesday March 10, 2015
--   Exported By:     POULTD10
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.2.4.00.08
--   Instance ID:     61917147665145
--
-- Import:
--   Using Application Builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application
 
-- Application Statistics:
--   Pages:                      6
--     Items:                   78
--     Computations:             3
--     Validations:             19
--     Processes:               18
--     Regions:                 12
--     Buttons:                 11
--     Dynamic Actions:          3
--   Shared Components:
--     Logic:
--       Items:                  6
--       Processes:              2
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Breadcrumbs:            1
--     Security:
--       Authentication:         2
--       Authorization:          6
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              23
--         Label:                5
--         List:                14
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               4
--         Report:               9
--       LOVs:                   6
--       Shortcuts:              2
--       Plug-ins:               1
--     Globalization:
--     Reports:
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,28386323219475260));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2012.01.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,260);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,260));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,260));
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,260),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,260),
  p_owner => nvl(wwv_flow_application_install.get_schema,'APPS'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'Scanned Invoice Image Management'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'F_58075955260'),
  p_page_view_logging => 'YES',
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt=> '3339EFA5F5071C1E4634112C46C93EE2883948A58F3981C92CE8622B36316182',
  p_checksum_salt_last_reset => '20140108141000',
  p_max_session_length_sec=> null,
  p_max_session_idle_sec=> 0,
  p_compatibility_mode=> '4.2',
  p_html_escaping_mode=> 'E',
  p_flow_language=> 'en',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> 'N',
  p_date_format=> 'DD-MON-YYYY HH24:MI:SS',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,''),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 9675447144552330 + wwv_flow_api.g_id_offset,
  p_logout_url=> '',
  p_application_tab_set=> 0,
  p_logo_image => '#WORKSPACE_IMAGES#oracle.gif',
  p_public_url_prefix => '',
  p_public_user=> 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '',
  p_cust_authentication_page=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'Y',
  p_browser_frame=>'D',
  p_deep_linking=>'N',
  p_vpd=> '',
  p_vpd_teardown_code=> '',
  p_authorize_public_pages_yn=>'N',
  p_csv_encoding=> 'Y',
  p_include_legacy_javascript=> 'Y',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss=> '20150310115439',
  p_ui_type_name => null,
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

----------------
--package app map
--
prompt  ...user interfaces
--
 
begin
 
--application/user interface/desktop
wwv_flow_api.create_user_interface (
  p_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_ui_type_name => 'DESKTOP'
 ,p_display_name => 'Desktop'
 ,p_display_seq => 10
 ,p_use_auto_detect => false
 ,p_is_default => true
 ,p_theme_id => 20
 ,p_home_url => 'f?p=&APP_ID.:1:&SESSION.'
 ,p_login_url => 'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
  );
null;
 
end;
/

prompt  ...plug-in settings
--
 
begin
 
--application/plug-in setting/dynamic_action_plugin_com_skillbuilders_modal_page
wwv_flow_api.create_plugin_setting (
  p_id => 10200542543793055 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_plugin => 'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
 ,p_attribute_01 => '6'
 ,p_attribute_02 => '.5'
 ,p_attribute_03 => 'Y'
 ,p_attribute_04 => 'none'
 ,p_attribute_05 => '100'
 ,p_attribute_06 => '300'
 ,p_attribute_07 => 'Y'
 ,p_attribute_08 => '#PLUGIN_PREFIX#plugins/modal-page/server/'
 ,p_attribute_09 => 'TEST'
  );
--application/plug-in setting/item_type_native_yes_no
wwv_flow_api.create_plugin_setting (
  p_id => 31210374352423236374 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_plugin => 'NATIVE_YES_NO'
 ,p_attribute_01 => 'Y'
 ,p_attribute_03 => 'N'
  );
null;
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
--application/shared_components/security/authorization/all_scanning_users
wwv_flow_api.create_security_scheme (
  p_id => 4938212389225380 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'All Scanning Users'
 ,p_scheme_type => 'NATIVE_EXISTS'
 ,p_attribute_01 => 'select 1 '||unistr('\000a')||
'from XXAP_SCAN_USERS'||unistr('\000a')||
'WHERE USER_NAME = :APP_USER '||unistr('\000a')||
''
 ,p_error_message => 'You are not Authorised to use the Oracle Scanning application.'||unistr('\000a')||
'Please create an Oracle ticket to request access'
 ,p_caching => 'BY_USER_BY_PAGE_VIEW'
  );
--application/shared_components/security/authorization/scanning_admin_user
wwv_flow_api.create_security_scheme (
  p_id => 4939109142242157 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Scanning Admin User'
 ,p_scheme_type => 'NATIVE_EXISTS'
 ,p_attribute_01 => 'select 1 '||unistr('\000a')||
'from XXAP_SCAN_USERS'||unistr('\000a')||
'WHERE USER_NAME = :APP_USER '||unistr('\000a')||
'and user_role = ''ADMIN'''||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_error_message => 'You are not set up with Administrator access for the Oracle Scaning application'
 ,p_caching => 'BY_USER_BY_PAGE_VIEW'
  );
--application/shared_components/security/authorization/payables_manager
wwv_flow_api.create_security_scheme (
  p_id => 9676052270201663 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'PAYABLES_MANAGER'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'DECLARE '||unistr('\000a')||
'l_user_id NUMBER DEFAULT 0; '||unistr('\000a')||
'BEGIN '||unistr('\000a')||
'select u.user_id into l_user_id'||unistr('\000a')||
'from FND_RESPONSIBILITY r , '||unistr('\000a')||
'     FND_USER_RESP_GROUPS urg,'||unistr('\000a')||
'     fnd_user u '||unistr('\000a')||
'where user_name = upper(:P101_USERNAME )'||unistr('\000a')||
'and u.user_id = urg.user_id'||unistr('\000a')||
'and r.responsibility_id = urg.responsibility_id'||unistr('\000a')||
'and r.responsibility_id = 20639 -- AP manager'||unistr('\000a')||
'and not exists '||unistr('\000a')||
'(select null from FND_RESPONSIBILITY r1 , '||unistr('\000a')||
'     FND_USER_RESP_GROUPS urg1'||unistr('\000a')||
' where u.user_id = urg1.user_id'||unistr('\000a')||
'  and r1.responsibility_id = urg1.responsibility_id'||unistr('\000a')||
'  and r1.responsibility_id in ( 20420, -- SYS ADMIN'||unistr('\000a')||
'                                20419)); --APP DEVELOPER'||unistr('\000a')||
'RETURN TRUE;'||unistr('\000a')||
'EXCEPTION'||unistr('\000a')||
'WHEN NO_DATA_FOUND '||unistr('\000a')||
'THEN '||unistr('\000a')||
'  RETURN FALSE;'||unistr('\000a')||
' END;'
 ,p_error_message => 'Access denied - User does not have correct EBS Oracle responsibility to access this item.'
 ,p_caching => 'BY_USER_BY_SESSION'
  );
--application/shared_components/security/authorization/payables_user
wwv_flow_api.create_security_scheme (
  p_id => 9676444925220320 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'PAYABLES_USER'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'DECLARE '||unistr('\000a')||
'l_user_id NUMBER DEFAULT 0; '||unistr('\000a')||
'BEGIN '||unistr('\000a')||
'select u.user_id into l_user_id'||unistr('\000a')||
'from FND_RESPONSIBILITY r , '||unistr('\000a')||
'     FND_USER_RESP_GROUPS urg,'||unistr('\000a')||
'     fnd_user u '||unistr('\000a')||
'where user_name = upper(:P101_USERNAME )'||unistr('\000a')||
'and u.user_id = urg.user_id'||unistr('\000a')||
'and r.responsibility_id = urg.responsibility_id'||unistr('\000a')||
'and r.responsibility_id = 50245'||unistr('\000a')||
'and not exists '||unistr('\000a')||
'(select null from FND_RESPONSIBILITY r1 , '||unistr('\000a')||
'     FND_USER_RESP_GROUPS urg1'||unistr('\000a')||
' where u.user_id = urg1.user_id'||unistr('\000a')||
'  and r1.responsibility_id = urg1.responsibility_id'||unistr('\000a')||
'  and r1.responsibility_id in ( 20639, --  AP_MANAGER '||unistr('\000a')||
'                                20420, -- SYS ADMIN'||unistr('\000a')||
'                                20419)); --APP DEVELOPER'||unistr('\000a')||
''||unistr('\000a')||
'RETURN TRUE;'||unistr('\000a')||
'EXCEPTION'||unistr('\000a')||
'WHEN NO_DATA_FOUND '||unistr('\000a')||
'THEN '||unistr('\000a')||
' xx_apex_authenticate.log  (1,''FALSE Authorize- AP user id ''|| :P101_USERNAME  , '''') ;'||unistr('\000a')||
'RETURN FALSE;'||unistr('\000a')||
'END ;'||unistr('\000a')||
''
 ,p_error_message => 'Access denied - User does not have correct EBS Oracle responsibility to access this item.'
 ,p_caching => 'BY_USER_BY_SESSION'
  );
--application/shared_components/security/authorization/sysadmin
wwv_flow_api.create_security_scheme (
  p_id => 9864840582873539 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'SYSADMIN'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'DECLARE '||unistr('\000a')||
'l_user_id NUMBER DEFAULT 0; '||unistr('\000a')||
'BEGIN '||unistr('\000a')||
'select 1 into l_user_id from dual '||unistr('\000a')||
'where exists (select null '||unistr('\000a')||
'from FND_RESPONSIBILITY r , '||unistr('\000a')||
'     FND_USER_RESP_GROUPS urg,'||unistr('\000a')||
'     fnd_user u '||unistr('\000a')||
'where user_name = upper(:P101_USERNAME )'||unistr('\000a')||
'and u.user_id = urg.user_id'||unistr('\000a')||
'and r.responsibility_id = urg.responsibility_id'||unistr('\000a')||
'and r.responsibility_id IN ( 20420, -- SYS ADMIN'||unistr('\000a')||
'                             20419) ); -- APP DEV'||unistr('\000a')||
'RETURN TRUE;'||unistr('\000a')||
'EXCEPTION'||unistr('\000a')||
'WHEN NO_DATA_FOUND '||unistr('\000a')||
'THEN '||unistr('\000a')||
'  RETURN FALSE;'||unistr('\000a')||
'END;'
 ,p_error_message => 'Access denied - User does not have correct EBS Oracle responsibility to access this item.'
 ,p_caching => 'BY_USER_BY_SESSION'
  );
--application/shared_components/security/authorization/ebs_valid_user
wwv_flow_api.create_security_scheme (
  p_id => 9906454752821573 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS VALID USER'
 ,p_scheme_type => 'NATIVE_FUNCTION_BODY'
 ,p_attribute_01 => 'DECLARE '||unistr('\000a')||
'l_user_id NUMBER DEFAULT 0; '||unistr('\000a')||
'BEGIN '||unistr('\000a')||
'select 1 into l_user_id from dual '||unistr('\000a')||
'where exists (select null '||unistr('\000a')||
'from FND_RESPONSIBILITY r , '||unistr('\000a')||
'     FND_USER_RESP_GROUPS urg,'||unistr('\000a')||
'     fnd_user u '||unistr('\000a')||
'where user_name = upper(:P101_USERNAME )'||unistr('\000a')||
'and u.user_id = urg.user_id'||unistr('\000a')||
'and r.responsibility_id = urg.responsibility_id'||unistr('\000a')||
'and r.responsibility_id IN (  20639, --PAYABLES_MANAGER '||unistr('\000a')||
'                              50245, --PAYABLE USER '||unistr('\000a')||
'                              20420, -- SYS ADMIN'||unistr('\000a')||
'                              20419) ); -- APP DEV'||unistr('\000a')||
'RETURN TRUE;'||unistr('\000a')||
'EXCEPTION'||unistr('\000a')||
'WHEN NO_DATA_FOUND '||unistr('\000a')||
'THEN '||unistr('\000a')||
'  RETURN FALSE;'||unistr('\000a')||
'END;'
 ,p_error_message => 'Access denied - User does not have correct EBS Oracle responsibility to access this item.'
 ,p_caching => 'BY_USER_BY_SESSION'
  );
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
null;
 
end;
/

prompt  ...application processes
--
--application/shared_components/logic/application_processes/validate_resp_id
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'begin '||unistr('\000a')||
'IF apex_util.public_check_authorization (''SYSADMIN'')  '||unistr('\000a')||
'THEN  '||unistr('\000a')||
'   :EBS_RESP_ID := ''2'' ;'||unistr('\000a')||
'ELSIF  apex_util.public_check_authorization (''PAYABLES_MANAGER'') '||unistr('\000a')||
'THEN  '||unistr('\000a')||
'   :EBS_RESP_ID := ''1''  ;'||unistr('\000a')||
'ELSIF   apex_util.public_check_authorization(''PAYABLES_USER'')           '||unistr('\000a')||
'THEN  :EBS_RESP_ID := ''0''  ;'||unistr('\000a')||
'ELSE     '||unistr('\000a')||
'     :EBS_RESP_ID := ''-99''; -- not valid user'||unistr('\000a')||
'END IF;'||unistr('\000a')||
'end;';

wwv_flow_api.create_flow_process(
  p_id => 9905653773700425 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Validate Resp Id',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '101',
  p_process_when_type=> 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/set_user_id
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'select user_id into :EBS_USER_ID '||unistr('\000a')||
'from fnd_user where user_name = :APP_USER;';

wwv_flow_api.create_flow_process(
  p_id => 9925463670908330 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set User id',
  p_process_sql_clob=> p,
  p_process_error_message=> 'Not found for  ||  :p101_USERNAME',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '101',
  p_process_when_type=> 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_process_comment=> '');
end;
 
null;
 
end;
/

prompt  ...application items
--
--application/shared_components/logic/application_items/ebs_app_id
 
begin
 
wwv_flow_api.create_flow_item (
  p_id => 9652249364714833 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS_APP_ID'
 ,p_scope => 'APP'
 ,p_data_type => 'VARCHAR'
 ,p_is_persistent => 'Y'
 ,p_protection_level => 'N'
  );
 
end;
/

--application/shared_components/logic/application_items/ebs_resp_id
 
begin
 
wwv_flow_api.create_flow_item (
  p_id => 9652446560716134 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS_RESP_ID'
 ,p_scope => 'APP'
 ,p_data_type => 'VARCHAR'
 ,p_is_persistent => 'Y'
 ,p_protection_level => 'N'
  );
 
end;
/

--application/shared_components/logic/application_items/ebs_sec_group
 
begin
 
wwv_flow_api.create_flow_item (
  p_id => 9652643541717466 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS_SEC_GROUP'
 ,p_scope => 'APP'
 ,p_data_type => 'VARCHAR'
 ,p_is_persistent => 'Y'
 ,p_protection_level => 'N'
  );
 
end;
/

--application/shared_components/logic/application_items/ebs_session_id
 
begin
 
wwv_flow_api.create_flow_item (
  p_id => 9872258040022210 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS_SESSION_ID'
 ,p_scope => 'APP'
 ,p_data_type => 'VARCHAR'
 ,p_is_persistent => 'Y'
 ,p_protection_level => 'N'
  );
 
end;
/

--application/shared_components/logic/application_items/ebs_user_id
 
begin
 
wwv_flow_api.create_flow_item (
  p_id => 9773361178688013 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS_USER_ID'
 ,p_scope => 'APP'
 ,p_data_type => 'VARCHAR'
 ,p_is_persistent => 'Y'
 ,p_protection_level => 'N'
  );
 
end;
/

--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item (
  p_id => 9711048377889156 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'FSP_AFTER_LOGIN_URL'
 ,p_scope => 'APP'
 ,p_data_type => 'VARCHAR'
 ,p_is_persistent => 'Y'
 ,p_protection_level => 'I'
  );
 
end;
/

prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_createuser
wwv_flow_api.create_tab (
  p_id=> 4899903213254375 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_CREATEUSER',
  p_tab_text => 'Create User',
  p_tab_step => 7,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_security_scheme => 4939109142242157+ wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
--application/shared_components/user_interface/lov/currency
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 4283325146743783 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'CURRENCY',
  p_lov_query=> 'select currency_code d, currency_code r'||unistr('\000a')||
'from FND_CURRENCIES_VL'||unistr('\000a')||
'WHERE END_DATE_ACTIVE IS NULL '||unistr('\000a')||
'and  ENABLED_FLAG = ''Y'''||unistr('\000a')||
'order by currency_code');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/exceptions
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 4528623978493740 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'EXCEPTIONS',
  p_lov_query=> 'select distinct  description d, lookup_code r  '||unistr('\000a')||
'from fnd_lookup_values '||unistr('\000a')||
'where lookup_type = ''XXAP_SCANNED_INV_EXCEPTIONS'' '||unistr('\000a')||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/org_entity
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 4283624094743784 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'ORG_ENTITY',
  p_lov_query=> 'SELECT  name || '' ('' || ATTRIBUTE6 || '')'' d , organization_id r'||unistr('\000a')||
'from HR_ALL_ORGANIZATION_UNITS'||unistr('\000a')||
'where sysdate between DATE_FROM and NVL(DATE_TO, ''01-Dec-2050'')'||unistr('\000a')||
'AND ATTRIBUTE6 IS NOT NULL'||unistr('\000a')||
'order by ATTRIBUTE6');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/p204_report_row_per_page
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 8363536893294792 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'P204_Report Row Per Page',
  p_lov_query=> '.'||to_char(8363536893294792 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8363818100294792 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'10',
  p_lov_return_value=>'10',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8364121675294792 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>20,
  p_lov_disp_value=>'15',
  p_lov_return_value=>'15',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8364438376294793 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>30,
  p_lov_disp_value=>'20',
  p_lov_return_value=>'20',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8364738198294793 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>40,
  p_lov_disp_value=>'30',
  p_lov_return_value=>'30',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8365011213294793 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>50,
  p_lov_disp_value=>'50',
  p_lov_return_value=>'50',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8365309241294794 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>60,
  p_lov_disp_value=>'100',
  p_lov_return_value=>'100',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8365618728294794 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>70,
  p_lov_disp_value=>'200',
  p_lov_return_value=>'200',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8365916226294794 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>80,
  p_lov_disp_value=>'500',
  p_lov_return_value=>'500',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8366232535294794 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>90,
  p_lov_disp_value=>'1000',
  p_lov_return_value=>'1000',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>8366527465294795 + wwv_flow_api.g_id_offset,
  p_lov_id=>8363536893294792 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>100,
  p_lov_disp_value=>'5000',
  p_lov_return_value=>'5000',
  p_lov_data_comment=> '');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/payment_method
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 4281807315743732 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'PAYMENT_METHOD',
  p_lov_query=> '.'||to_char(4281807315743732 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>4282124223743750 + wwv_flow_api.g_id_offset,
  p_lov_id=>4281807315743732 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>1,
  p_lov_disp_value=>'Electronic',
  p_lov_return_value=>'EFT',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>4282425932743765 + wwv_flow_api.g_id_offset,
  p_lov_id=>4281807315743732 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>2,
  p_lov_disp_value=>'Clearing',
  p_lov_return_value=>'CLEARING',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>4282721056743765 + wwv_flow_api.g_id_offset,
  p_lov_id=>4281807315743732 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>3,
  p_lov_disp_value=>'Cheque',
  p_lov_return_value=>'CHECK',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>4283001103743765 + wwv_flow_api.g_id_offset,
  p_lov_id=>4281807315743732 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>4,
  p_lov_disp_value=>'Wire',
  p_lov_return_value=>'WIRE',
  p_lov_data_comment=> '');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/voucher_number
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 5308618504444799 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'VOUCHER_NUMBER',
  p_lov_query=> 'select DISTINCT DOC_SEQUENCE_VALUE D, DOC_SEQUENCE_VALUE R '||unistr('\000a')||
' from AP_INVOICES_ALL I  '||unistr('\000a')||
' where I.BATCH_ID = :P1_BATCH_ID '||unistr('\000a')||
' and not exists (select 1 from XXAP_SCAN S1  where I.DOC_SEQUENCE_VALUE = S1.VOUCHER_NUMBER)');
 
null;
 
end;
/

prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00001
prompt  ...PAGE 1: Scanning
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_user_interface_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Scanning'
 ,p_step_title => 'Scanning'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Scanning'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_required_role => 4938212389225380 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DEAKIA10'
 ,p_last_upd_yyyymmddhh24miss => '20150109111304'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||unistr('\000a')||
'		scan_id, '||unistr('\000a')||
'		PDF,'||unistr('\000a')||
'		BATCH_ID,'||unistr('\000a')||
'		BATCH_NAME,'||unistr('\000a')||
'		Assigned_to,'||unistr('\000a')||
'		Entity,'||unistr('\000a')||
'		case when status = ''Approved'' then ''Validated'' else ''Not Validated'' end status,'||unistr('\000a')||
'		SCAN_ID_DISPLAY,'||unistr('\000a')||
'		SCAN_EXCEPTION,'||unistr('\000a')||
'		Change_Entity,'||unistr('\000a')||
'		ORG_ID,'||unistr('\000a')||
'		VOUCHER_NUMBER ,'||unistr('\000a')||
'		CREATED_DATE,'||unistr('\000a')||
'		NEW_ORG_ID,'||unistr('\000a')||
'		NEW_SCAN_ID,'||unistr('\000a')||
'		MDM,'||unistr('\000a')||
'		COMMENTS,'||unistr('\000a')||
'		MDM_START_DATE,'||unistr('\000a')||
'		LAST_UPDATE_DATE,'||unistr('\000a')||
'		-- 1 day = green, 2 = amber, 3=red, approved = blue'||unistr('\000a')||
'	';

s:=s||'	case when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)= ''Approved''  then ''<img src="#WORKSPACE_IMAGES#blue.jpg">'''||unistr('\000a')||
'		     when  SCAN_EXCEPTION IS NOT NULL then ''<img src="#WORKSPACE_IMAGES#blue.jpg">'''||unistr('\000a')||
'			 when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and NVL(RAG_LIMIT,1) <= 1 then ''<img src="#WORKSPACE_IMAGES#green.jpg">'''||unistr('\000a')||
'			 when  DECODE(STATUS, ''Entity Changed''';

s:=s||', ''Approved'', STATUS)!= ''Approved'' and rag_limit > 1 and rag_limit < 3  then ''<img src="#WORKSPACE_IMAGES#amber.jpg">'''||unistr('\000a')||
'			 when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and rag_limit > 2 then ''<img src="#WORKSPACE_IMAGES#red.jpg">'''||unistr('\000a')||
'		end rag'||unistr('\000a')||
'from '||unistr('\000a')||
'				(select '||unistr('\000a')||
'				SCAN_ID,'||unistr('\000a')||
'				CASE WHEN DBMS_LOB.GETLENGTH(S.SCAN_BLOB) > 0 THEN ''PDF'' ELSE NULL END PDF,'||unistr('\000a')||
'				BATCH_ID,'||unistr('\000a')||
'				(s';

s:=s||'elect B.BATCH_NAME from ap_batches_all B where S.BATCH_ID = B.BATCH_ID) batch_name,'||unistr('\000a')||
'				(select B.attribute1 from AP_BATCHES_ALL B where S.BATCH_ID = B.BATCH_ID) assigned_to,'||unistr('\000a')||
'				(select e.name from  XXICL_IBS_EBS_ENTITIES E where E.ORG_ID = S.ORG_ID) Entity,'||unistr('\000a')||
'				DECODE(new_org_id, null, INITCAP(NVL((SELECT APPS.AP_INVOICES_PKG.GET_APPROVAL_STATUS ( I.INVOICE_ID ,I.INVOICE_AMOUNT ,I.PAYMENT_STATUS';

s:=s||'_FLAG ,I.INVOICE_TYPE_LOOKUP_CODE ) Approval_Status '||unistr('\000a')||
'						   from AP_INVOICES_ALL I'||unistr('\000a')||
'						   where DOC_SEQUENCE_VALUE  = S.VOUCHER_NUMBER  and BATCH_ID = S.BATCH_ID and ORG_ID = S.ORG_ID), ''Not Completed'')),''Entity Changed'''||unistr('\000a')||
'				) STATUS,'||unistr('\000a')||
'				"SCAN_ID" SCAN_ID_DISPLAY,'||unistr('\000a')||
'				SCAN_EXCEPTION,'||unistr('\000a')||
'				''Change Entity'' Change_Entity,'||unistr('\000a')||
'				ORG_ID,'||unistr('\000a')||
'				to_char(CREATED_DATE, ''DD-MON-YYYY'') CREATED_DATE,'||unistr('\000a')||
'				VOUC';

s:=s||'HER_NUMBER ,'||unistr('\000a')||
'				/*'||unistr('\000a')||
'				  APEX_ITEM.SELECT_LIST_FROM_QUERY(P_IDX => 8,'||unistr('\000a')||
'												   P_VALUE => VOUCHER_NUMBER,'||unistr('\000a')||
'				 P_QUERY => ''select DISTINCT VOUCHER_NUM D, VOUCHER_NUM R from AP_INVOICES_ALL I  where I.BATCH_ID = BATCH_ID and I.ORG_ID = org_id and not exists (select 1 from XX.XXAP_SCAN S1  where I.VOUCHER_NUM = S1.VOUCHER_NUMBER) '','||unistr('\000a')||
'												  p_show_null => ''YES'','||unistr('\000a')||
'												  P_NULL_VAL';

s:=s||'UE => null,'||unistr('\000a')||
'												  p_null_text => ''--- Please select a Voucher --'') voucher_number , '||unistr('\000a')||
'				*/  '||unistr('\000a')||
'				NEW_ORG_ID,'||unistr('\000a')||
'				NEW_SCAN_ID,'||unistr('\000a')||
'				''New Supplier Request'' MDM,'||unistr('\000a')||
'				COMMENTS,'||unistr('\000a')||
'				CASE WHEN MDM_START_DATE IS NOT NULL THEN  to_char(MDM_START_DATE,''DD-MON-YYYY'') || ''  (Request '' || mdm_workflow || '')'' END MDM_START_DATE,'||unistr('\000a')||
'				LAST_UPDATE_DATE,'||unistr('\000a')||
'				trunc(sysdate - NVL(created_DATE, sysdate)) rag_';

s:=s||'limit'||unistr('\000a')||
'				from XXAP_SCAN S'||unistr('\000a')||
'				WHERE BATCH_ID = :P1_BATCH_ID'||unistr('\000a')||
'				)'||unistr('\000a')||
'-- InProgres = exclude completed and record which have a new org and records which has not been started'||unistr('\000a')||
'WHERE ((:P1_SHOW_EXCEPTION = ''I'' and NEW_ORG_ID is null and STATUS != ''COMPLETED'' and SCAN_EXCEPTION is not null and voucher_number is null  ) or :P1_SHOW_EXCEPTION = ''A'' or :P1_SHOW_EXCEPTION = ''T'')'||unistr('\000a')||
'-- ToProgress = exclude compl';

s:=s||'eted and record which have a new org and records which has not been started'||unistr('\000a')||
'AND  ((:P1_SHOW_EXCEPTION = ''T'' and NEW_ORG_ID is null and STATUS != ''COMPLETED'' and (SCAN_EXCEPTION is null OR VOUCHER_NUMBER IS NULL) )  or  :P1_SHOW_EXCEPTION = ''A'' or :P1_SHOW_EXCEPTION = ''I'')'||unistr('\000a')||
'and NVL(SCAN_EXCEPTION, ''X'') not in (''Duplicate'',''Not an Invoice'')'||unistr('\000a')||
'order by DECODE(VOUCHER_NUMBER, null, 1,2),  DECODE(SCAN_EXC';

s:=s||'EPTION, null, 1, ''Incorrect Legal Entity on filename'', 2, 3), DECODE( STATUS, ''Appoved'' , 0, ''Entity Changed'',  0, RAG_LIMIT) desc, SCAN_ID'||unistr('\000a')||
'';

wwv_flow_api.create_report_region (
  p_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_name=> 'Scanning Details',
  p_region_name=>'',
  p_template=> 31210376842276236379+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_display_when_condition=> 'NVL(:P1_MODE, ''INIT'') <>''INIT''',
  p_display_condition_type=> 'PLSQL_EXPRESSION',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 31210378052302236381+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '10',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4693508872817484 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'SCAN_ID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Scan Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'T',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'SCAN_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694913077817485 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'PDF',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Pdf',
  p_use_as_row_header=> 'N',
  p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_SCAN_ID:#SCAN_ID#',
  p_column_linktext=>'#PDF#',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4693608434817484 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'BATCH_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Batch Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'BATCH_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4854517649310088 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'BATCH_NAME',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Batch Name',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5023325740237434 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'ASSIGNED_TO',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Assigned To',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4854603009310105 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'ENTITY',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Entity',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4695202994817486 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS',
  p_column_display_sequence=> 12,
  p_column_heading=> 'Status',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4693728421817484 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'SCAN_ID_DISPLAY',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Scan Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'SCAN_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4693826899817484 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'SCAN_EXCEPTION',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Scan<BR> Exception',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_LOV',
  p_named_lov=>4528623978493740 + wwv_flow_api.g_id_offset,
  p_lov_show_nulls=> 'YES',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'SCAN_EXCEPTION',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4695403300817486 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'CHANGE_ENTITY',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Change<BR>Entity',
  p_use_as_row_header=> 'N',
  p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_SCAN_ID:#SCAN_ID#',
  p_column_linktext=>'#CHANGE_ENTITY#',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4693913823817484 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'ORG_ID',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Org Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'ORG_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4854729244310105 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 12,
  p_form_element_id=> null,
  p_column_alias=> 'VOUCHER_NUMBER',
  p_column_display_sequence=> 11,
  p_column_heading=> 'Voucher Number',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST_FROM_QUERY',
  p_inline_lov=> 'select DISTINCT DOC_SEQUENCE_VALUE D, DOC_SEQUENCE_VALUE R '||unistr('\000a')||
' from AP_INVOICES_ALL I  '||unistr('\000a')||
' where I.BATCH_ID = :P1_BATCH_ID '||unistr('\000a')||
' and not exists (select 1 from XXAP_SCAN S1  where I.DOC_SEQUENCE_VALUE = S1.VOUCHER_NUMBER and i.org_id = s1.org_id ) ',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694118694817484 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 13,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_DATE',
  p_column_display_sequence=> 19,
  p_column_heading=> 'Created<BR> Date',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '12',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'CREATED_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694400063817485 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 14,
  p_form_element_id=> null,
  p_column_alias=> 'NEW_ORG_ID',
  p_column_display_sequence=> 17,
  p_column_heading=> 'New Org Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'NEW_ORG_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694523227817485 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 15,
  p_form_element_id=> null,
  p_column_alias=> 'NEW_SCAN_ID',
  p_column_display_sequence=> 18,
  p_column_heading=> 'New Scan Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'NEW_SCAN_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4695531034817486 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 16,
  p_form_element_id=> null,
  p_column_alias=> 'MDM',
  p_column_display_sequence=> 13,
  p_column_heading=> 'Mdm',
  p_use_as_row_header=> 'N',
  p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_SCAN_ID:#SCAN_ID#',
  p_column_linktext=>'#MDM#',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694620742817485 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 17,
  p_form_element_id=> null,
  p_column_alias=> 'COMMENTS',
  p_column_display_sequence=> 14,
  p_column_heading=> 'Comments',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'TEXTAREA',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '50',
  p_column_height=> '3',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'COMMENTS',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694704742817485 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 18,
  p_form_element_id=> null,
  p_column_alias=> 'MDM_START_DATE',
  p_column_display_sequence=> 15,
  p_column_heading=> 'Mdm<BR> Details',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '12',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'MDM_START_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4694829283817485 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 19,
  p_form_element_id=> null,
  p_column_alias=> 'LAST_UPDATE_DATE',
  p_column_display_sequence=> 20,
  p_column_heading=> 'Last Update Date',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '12',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN',
  p_ref_column_name=> 'LAST_UPDATE_DATE',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4695309889817486 + wwv_flow_api.g_id_offset,
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 20,
  p_form_element_id=> null,
  p_column_alias=> 'RAG',
  p_column_display_sequence=> 16,
  p_column_heading=> 'Approaching<BR>SLA',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4698131035821860 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Parameters',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 31210376842276236379+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 5020916934194466 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Scans which Have Exceeded the SLA',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 31210376842276236379+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select ENTITY,'||unistr('\000a')||
'       BATCH_ID,'||unistr('\000a')||
'       BATCH_NAME,'||unistr('\000a')||
'       ASSIGNED_TO,'||unistr('\000a')||
'       SCAN_ID,'||unistr('\000a')||
'       case when status = ''Approved'' then ''Validated'' else status end status,'||unistr('\000a')||
'       SCAN_EXCEPTION,'||unistr('\000a')||
'       ORG_ID,'||unistr('\000a')||
'       VOUCHER_NUMBER,'||unistr('\000a')||
'       CREATED_DATE,'||unistr('\000a')||
'       NEW_ORG_ID,'||unistr('\000a')||
'       NEW_SCAN_ID,'||unistr('\000a')||
'       COMMENTS,'||unistr('\000a')||
'       MDM_START_DATE,'||unistr('\000a')||
'       LAST_UPDATE_DATE,'||unistr('\000a')||
'       -- 1 day = green, 2 = amber, 3=red, approv';

s:=s||'ed (completed) = blue'||unistr('\000a')||
'       case when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)= ''Approved''  then ''<img src="#WORKSPACE_IMAGES#blue.jpg">'''||unistr('\000a')||
'	         when  VOUCHER_NUMBER IS NOT NULL then ''<img src="#WORKSPACE_IMAGES#blue.jpg">'''||unistr('\000a')||
'            when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and NVL(RAG_LIMIT,1) <= 1 then ''<img src="#WORKSPACE_IMAGES#green.jpg">'''||unistr('\000a')||
'  ';

s:=s||'          when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and rag_limit > 1 and rag_limit < 3  then ''<img src="#WORKSPACE_IMAGES#amber.jpg">'''||unistr('\000a')||
'            when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and rag_limit > 2 then ''<img src="#WORKSPACE_IMAGES#red.jpg">'''||unistr('\000a')||
'       end rag'||unistr('\000a')||
'from ('||unistr('\000a')||
'   select '||unistr('\000a')||
'         (select e.name from  XXICL_IBS_EBS_ENTITIES E';

s:=s||' where E.ORG_ID = NVL(S.NEW_ORG_ID, S.ORG_ID)) Entity,'||unistr('\000a')||
'         BATCH_ID,'||unistr('\000a')||
'         (select B.BATCH_NAME from ap_batches_all B where S.BATCH_ID = B.BATCH_ID) batch_name,'||unistr('\000a')||
'         (select B.ATTRIBUTE1 from ap_batches_all B where S.BATCH_ID = B.BATCH_ID) Assigned_to,'||unistr('\000a')||
'         SCAN_ID,'||unistr('\000a')||
'         DECODE(new_org_id, null, ''Entity Changed'','||unistr('\000a')||
'         INITCAP(NVL((SELECT APPS.AP_INVOICES_PKG.GET_APPROVAL_ST';

s:=s||'ATUS ( I.INVOICE_ID ,I.INVOICE_AMOUNT ,I.PAYMENT_STATUS_FLAG ,I.INVOICE_TYPE_LOOKUP_CODE ) Approval_Status '||unistr('\000a')||
'                      from AP_INVOICES_ALL I'||unistr('\000a')||
'                      where DOC_SEQUENCE_VALUE  = S.VOUCHER_NUMBER  and BATCH_ID = S.BATCH_ID and ORG_ID = S.ORG_ID), ''Not Completed''))) STATUS,'||unistr('\000a')||
'         (select distinct meaning from fnd_lookup_values  where lookup_type = ''XXAP_SCANNED_INV_EXCEPT';

s:=s||'IONS'' and lookup_code = S.SCAN_EXCEPTION) SCAN_EXCEPTION,'||unistr('\000a')||
'         ORG_ID,'||unistr('\000a')||
'         VOUCHER_NUMBER ,'||unistr('\000a')||
'         to_char(CREATED_DATE, ''DD-MON-YYYY'') CREATED_DATE, '||unistr('\000a')||
'         NEW_ORG_ID,'||unistr('\000a')||
'         NEW_SCAN_ID,'||unistr('\000a')||
'         substr(COMMENTS, 1,60) comments,'||unistr('\000a')||
'         CASE WHEN MDM_START_DATE IS NOT NULL THEN  to_char(MDM_START_DATE,''DD-MON-YYYY'') || ''  (Request '' || mdm_workflow || '')'' END MDM_START_DATE,'||unistr('\000a')||
'   ';

s:=s||'      LAST_UPDATE_DATE,'||unistr('\000a')||
'         trunc(sysdate - NVL(created_DATE, sysdate)) rag_limit,'||unistr('\000a')||
'         round(to_number((sysdate  - NVL(created_DATE, sysdate))),2) ORDER_BY1'||unistr('\000a')||
'   from  XXAP_SCAN S'||unistr('\000a')||
')'||unistr('\000a')||
'where DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and RAG_LIMIT > 1'||unistr('\000a')||
'and ( voucher_number is null  or   nvl(scan_exception, ''MDM Requested'') = ''MDM Requested'' )'||unistr('\000a')||
'order by  RAG desc, scan_id ';

s:=s||''||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 4744625482212784 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Overdue Batchs',
  p_region_name=>'',
  p_parent_plug_id=>5020916934194466 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'N',
  p_plug_template=> 0,
  p_plug_display_sequence=> 25,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select ENTITY,'||unistr('\000a')||
'       BATCH_ID,'||unistr('\000a')||
'       BATCH_NAME,'||unistr('\000a')||
'       ASSIGNED_TO,'||unistr('\000a')||
'       SCAN_ID,'||unistr('\000a')||
'       case when status = ''Approved'' then ''Validated'' else status end status,'||unistr('\000a')||
'       SCAN_EXCEPTION,'||unistr('\000a')||
'       ORG_ID,'||unistr('\000a')||
'       VOUCHER_NUMBER,'||unistr('\000a')||
'       CREATED_DATE,'||unistr('\000a')||
'       NEW_ORG_ID,'||unistr('\000a')||
'       NEW_SCAN_ID,'||unistr('\000a')||
'       COMMENTS,'||unistr('\000a')||
'       MDM_START_DATE,'||unistr('\000a')||
'       LAST_UPDATE_DATE,'||unistr('\000a')||
'       -- 1 day = green, 2 = amber, 3=red, approv';

a1:=a1||'ed (completed) = blue'||unistr('\000a')||
'       case when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)= ''Approved''  then ''<img src="#WORKSPACE_IMAGES#blue.jpg">'''||unistr('\000a')||
'	         when  VOUCHER_NUMBER IS NOT NULL then ''<img src="#WORKSPACE_IMAGES#blue.jpg">'''||unistr('\000a')||
'            when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and NVL(RAG_LIMIT,1) <= 1 then ''<img src="#WORKSPACE_IMAGES#green.jpg">'''||unistr('\000a')||
'  ';

a1:=a1||'          when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and rag_limit > 1 and rag_limit < 3  then ''<img src="#WORKSPACE_IMAGES#amber.jpg">'''||unistr('\000a')||
'            when  DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and rag_limit > 2 then ''<img src="#WORKSPACE_IMAGES#red.jpg">'''||unistr('\000a')||
'       end rag'||unistr('\000a')||
'from ('||unistr('\000a')||
'   select '||unistr('\000a')||
'         (select e.name from  XXICL_IBS_EBS_ENTITIES E';

a1:=a1||' where E.ORG_ID = NVL(S.NEW_ORG_ID, S.ORG_ID)) Entity,'||unistr('\000a')||
'         BATCH_ID,'||unistr('\000a')||
'         (select B.BATCH_NAME from ap_batches_all B where S.BATCH_ID = B.BATCH_ID) batch_name,'||unistr('\000a')||
'         (select B.ATTRIBUTE1 from ap_batches_all B where S.BATCH_ID = B.BATCH_ID) Assigned_to,'||unistr('\000a')||
'         SCAN_ID,'||unistr('\000a')||
'         DECODE(new_org_id, null, ''Entity Changed'','||unistr('\000a')||
'         INITCAP(NVL((SELECT APPS.AP_INVOICES_PKG.GET_APPROVAL_ST';

a1:=a1||'ATUS ( I.INVOICE_ID ,I.INVOICE_AMOUNT ,I.PAYMENT_STATUS_FLAG ,I.INVOICE_TYPE_LOOKUP_CODE ) Approval_Status '||unistr('\000a')||
'                      from AP_INVOICES_ALL I'||unistr('\000a')||
'                      where DOC_SEQUENCE_VALUE  = S.VOUCHER_NUMBER  and BATCH_ID = S.BATCH_ID and ORG_ID = S.ORG_ID), ''Not Completed''))) STATUS,'||unistr('\000a')||
'         (select distinct meaning from fnd_lookup_values  where lookup_type = ''XXAP_SCANNED_INV_EXCEPT';

a1:=a1||'IONS'' and lookup_code = S.SCAN_EXCEPTION) SCAN_EXCEPTION,'||unistr('\000a')||
'         ORG_ID,'||unistr('\000a')||
'         VOUCHER_NUMBER ,'||unistr('\000a')||
'         to_char(CREATED_DATE, ''DD-MON-YYYY'') CREATED_DATE, '||unistr('\000a')||
'         NEW_ORG_ID,'||unistr('\000a')||
'         NEW_SCAN_ID,'||unistr('\000a')||
'         substr(COMMENTS, 1,60) comments,'||unistr('\000a')||
'         CASE WHEN MDM_START_DATE IS NOT NULL THEN  to_char(MDM_START_DATE,''DD-MON-YYYY'') || ''  (Request '' || mdm_workflow || '')'' END MDM_START_DATE,'||unistr('\000a')||
'   ';

a1:=a1||'      LAST_UPDATE_DATE,'||unistr('\000a')||
'         trunc(sysdate - NVL(created_DATE, sysdate)) rag_limit,'||unistr('\000a')||
'         round(to_number((sysdate  - NVL(created_DATE, sysdate))),2) ORDER_BY1'||unistr('\000a')||
'   from  XXAP_SCAN S'||unistr('\000a')||
')'||unistr('\000a')||
'where DECODE(STATUS, ''Entity Changed'', ''Approved'', STATUS)!= ''Approved'' and RAG_LIMIT > 1'||unistr('\000a')||
'and ( voucher_number is null  or   nvl(scan_exception, ''MDM Requested'') = ''MDM Requested'' )'||unistr('\000a')||
'order by  RAG desc, scan_id ';

a1:=a1||''||unistr('\000a')||
'';

wwv_flow_api.create_worksheet(
  p_id=> 4744712052212785+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_region_id=> 4744625482212784+wwv_flow_api.g_id_offset,
  p_name=> 'Overdue Batchs',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '1000000',
  p_max_row_count_message=> 'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'Y',
  p_allow_save_rpt_public=>'N',
  p_allow_report_categories=>'N',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y',
  p_pagination_display_pos=>'BOTTOM_RIGHT',
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'N',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'N',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'N',
  p_show_calendar=>'N',
  p_show_flashback=>'Y',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL',
  p_allow_exclude_null_values=>'N',
  p_allow_hide_extra_columns=>'N',
  p_icon_view_enabled_yn=>'N',
  p_icon_view_use_custom=>'N',
  p_icon_view_columns_per_row=>1,
  p_detail_view_enabled_yn=>'N',
  p_owner=>'DEAKIA10',
  p_internal_uid=> 4744712052212785);
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4744928702212861+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SCAN_ID',
  p_display_order          =>1,
  p_column_identifier      =>'A',
  p_column_label           =>'Scan Id',
  p_report_label           =>'Scan Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745002083212875+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'BATCH_ID',
  p_display_order          =>2,
  p_column_identifier      =>'B',
  p_column_label           =>'Batch Id',
  p_report_label           =>'Batch Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745111889212875+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'BATCH_NAME',
  p_display_order          =>3,
  p_column_identifier      =>'C',
  p_column_label           =>'Batch Name',
  p_report_label           =>'Batch Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745210363212875+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ENTITY',
  p_display_order          =>4,
  p_column_identifier      =>'D',
  p_column_label           =>'Entity',
  p_report_label           =>'Entity',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745311529212876+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'STATUS',
  p_display_order          =>5,
  p_column_identifier      =>'E',
  p_column_label           =>'Status',
  p_report_label           =>'Status',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745503614212876+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SCAN_EXCEPTION',
  p_display_order          =>7,
  p_column_identifier      =>'G',
  p_column_label           =>'Scan Exception',
  p_report_label           =>'Scan Exception',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745613095212877+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ORG_ID',
  p_display_order          =>8,
  p_column_identifier      =>'H',
  p_column_label           =>'Org Id',
  p_report_label           =>'Org Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745809758212877+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CREATED_DATE',
  p_display_order          =>10,
  p_column_identifier      =>'J',
  p_column_label           =>'Created Date',
  p_report_label           =>'Created Date',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4745917633212877+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'VOUCHER_NUMBER',
  p_display_order          =>11,
  p_column_identifier      =>'K',
  p_column_label           =>'Voucher Number',
  p_report_label           =>'Voucher Number',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4746125541212878+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NEW_ORG_ID',
  p_display_order          =>13,
  p_column_identifier      =>'M',
  p_column_label           =>'New Org Id',
  p_report_label           =>'New Org Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4746215859212878+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NEW_SCAN_ID',
  p_display_order          =>14,
  p_column_identifier      =>'N',
  p_column_label           =>'New Scan Id',
  p_report_label           =>'New Scan Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4746319907212878+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'COMMENTS',
  p_display_order          =>15,
  p_column_identifier      =>'O',
  p_column_label           =>'Comments',
  p_report_label           =>'Comments',
  p_sync_form_label        =>'N',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4746514607212880+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'LAST_UPDATE_DATE',
  p_display_order          =>17,
  p_column_identifier      =>'Q',
  p_column_label           =>'Last Update Date',
  p_report_label           =>'Last Update Date',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4746613090212881+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'RAG',
  p_display_order          =>18,
  p_column_identifier      =>'R',
  p_column_label           =>'Rag',
  p_report_label           =>'Rag',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 4766002078873590+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'MDM_START_DATE',
  p_display_order          =>19,
  p_column_identifier      =>'S',
  p_column_label           =>'Mdm Details',
  p_report_label           =>'Mdm Details',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 5023606607260496+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSIGNED_TO',
  p_display_order          =>20,
  p_column_identifier      =>'T',
  p_column_label           =>'Assigned To',
  p_report_label           =>'Assigned To',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'SCAN_ID:BATCH_ID:BATCH_NAME:ENTITY:STATUS:SCAN_EXCEPTION:ORG_ID:CREATED_DATE:VOUCHER_NUMBER:NEW_ORG_ID:NEW_SCAN_ID:COMMENTS:LAST_UPDATE_DATE:RAG:MDM_START_DATE:ASSIGNED_TO';

wwv_flow_api.create_worksheet_rpt(
  p_id => 4746726867213234+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 4744712052212785+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'47468',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4700131128878666 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 40,
  p_button_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_button_name    => 'GO',
  p_button_action  => 'SUBMIT',
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Go',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4695613728817486 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 30,
  p_button_plug_id => 4693323469817483+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Save',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4695823833817486 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 10,
  p_button_plug_id => 4693323469817483+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4697910429817490 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4698401487825720 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_BATCH_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Batch Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_POPUP_LOV',
  p_lov=> 'select distinct  BATCH_NAME || ''  -   '' || e.name || ''  -   '' || to_char(BATCH_DATE , ''DD-MON-YYYY'') D, b.batch_id R'||unistr('\000a')||
'from ap_batches_all b, '||unistr('\000a')||
'     hr_all_organization_units e,'||unistr('\000a')||
'	  (select s.batch_id from xxap_scan s where :P1_PROCESSED_BATCHES = ''U'' and  voucher_number is  null and  scan_exception is  null '||unistr('\000a')||
'      UNION'||unistr('\000a')||
'      select s.batch_id from xxap_scan s where :P1_PROCESSED_BATCHES = ''U'' and  scan_exception = 70  ) scan_U'||unistr('\000a')||
'where b.org_id = e.organization_id(+)'||unistr('\000a')||
'and b.batch_name like ''%SSC%'''||unistr('\000a')||
'and :P1_PROCESSED_BATCHES = ''U'' '||unistr('\000a')||
'and b.batch_id = scan_U.batch_id '||unistr('\000a')||
'UNION'||unistr('\000a')||
'select distinct  BATCH_NAME || ''  -   '' || e.name || ''  -   '' || to_char(BATCH_DATE , ''DD-MON-YYYY'') D, b.batch_id R'||unistr('\000a')||
'from ap_batches_all b, '||unistr('\000a')||
'     hr_all_organization_units e,'||unistr('\000a')||
'	  (select s.batch_id from xxap_scan s where :P1_PROCESSED_BATCHES = ''A'' )   scan_A'||unistr('\000a')||
'where b.org_id = e.organization_id(+)'||unistr('\000a')||
'and b.batch_name like ''%SSC%'''||unistr('\000a')||
'and :P1_PROCESSED_BATCHES = ''A'' and b.batch_id = scan_A.batch_id '||unistr('\000a')||
'order by 2 desc',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'ABOVE',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NOT_ENTERABLE',
  p_attribute_02 => 'FIRST_ROWSET',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4698629079828212 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_EXCEPTION',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Exception',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4698814199835098 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_ENTITY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Entity',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4728624529182556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_MODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Mode',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4821622606854335 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_SHOW_EXCEPTION',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default=> 'A',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Show Exception',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_RADIOGROUP',
  p_lov=> 'STATIC2:All Records;A,Records In Process;I,Records To Process;T',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'ABOVE',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '1',
  p_attribute_02 => 'NONE',
  p_attribute_04 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5266524677456388 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_PROCESSED_BATCHES',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 4698131035821860+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default=> 'U',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Processed Batches',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_RADIOGROUP',
  p_lov=> 'STATIC2:UnProcessed Batches;U,All Batches;A',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'ABOVE',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '1',
  p_attribute_02 => 'NONE',
  p_attribute_04 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5713019807543087 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_CURRENT_NO_OF_RECS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 4693323469817483+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Current No',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5717031440552813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_LAST_NO_OF_RECS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 4693323469817483+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Last No',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5721002542566250 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_REFRESH_PAGE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 4693323469817483+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Refresh',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 4728804688191760 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_computation_sequence => 10,
  p_computation_item=> 'P1_MODE',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'INIT',
  p_compute_when => '-- initial setup'||unistr('\000a')||
':P1_MODE IS NULL',
  p_compute_when_type=>'PLSQL_EXPRESSION');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 5312704090937739 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_computation_sequence => 10,
  p_computation_item=> 'P1_PROCESSED_BATCHES',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'U',
  p_compute_when => '-- initial setup'||unistr('\000a')||
':P1_PROCESSED_BATCHES IS NULL',
  p_compute_when_type=>'PLSQL_EXPRESSION');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 5312927369942116 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_computation_sequence => 10,
  p_computation_item=> 'P1_SHOW_EXCEPTION',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'A',
  p_compute_when => '-- initial setup'||unistr('\000a')||
':P1_SHOW_EXCEPTION IS NULL',
  p_compute_when_type=>'PLSQL_EXPRESSION');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4696130389817487 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'BATCH_ID must be numeric',
  p_validation_sequence=> 20,
  p_validation => 'BATCH_ID',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'BATCH_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4696325407817487 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'ORG_ID must be numeric',
  p_validation_sequence=> 50,
  p_validation => 'ORG_ID',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'ORG_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4696525478817488 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'CREATED_DATE must be a valid date',
  p_validation_sequence=> 70,
  p_validation => 'CREATED_DATE',
  p_validation_type => 'ITEM_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'CREATED_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4696721617817488 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'COMPLETED_DATE must be a valid date',
  p_validation_sequence=> 90,
  p_validation => 'COMPLETED_DATE',
  p_validation_type => 'ITEM_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'COMPLETED_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4696930285817488 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'NEW_ORG_ID must be numeric',
  p_validation_sequence=> 100,
  p_validation => 'NEW_ORG_ID',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'NEW_ORG_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4697108807817489 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'NEW_SCAN_ID must be numeric',
  p_validation_sequence=> 110,
  p_validation => 'NEW_SCAN_ID',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '#COLUMN_HEADER# must be numeric.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'NEW_SCAN_ID',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4697308558817489 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'MDM_START_DATE must be a valid date',
  p_validation_sequence=> 130,
  p_validation => 'MDM_START_DATE',
  p_validation_type => 'ITEM_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'MDM_START_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4697503953817489 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'LAST_UPDATE_DATE must be a valid date',
  p_validation_sequence=> 140,
  p_validation => 'LAST_UPDATE_DATE',
  p_validation_type => 'ITEM_IS_DATE',
  p_error_message => '#COLUMN_HEADER# must be a valid date.',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'N',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'LAST_UPDATE_DATE',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5064606292913980 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_tabular_form_region_id => 4693323469817483 + wwv_flow_api.g_id_offset,
  p_validation_name => 'COMMENTS is not null when a exception exists',
  p_validation_sequence=> 150,
  p_validation => 'COMMENTS',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please enter some Comments',
  p_always_execute=>'N',
  p_validation_condition=> 'SCAN_EXCEPTION',
  p_validation_condition_type=> 'ITEM_IS_NOT_NULL',
  p_when_button_pressed=> 4695613728817486 + wwv_flow_api.g_id_offset,
  p_exec_cond_for_each_row=> 'Y',
  p_only_for_changed_rows=> 'Y',
  p_associated_column=> 'COMMENTS',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 5267504927716994 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'save radio option'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P1_PROCESSED_BATCHES'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
  );
wwv_flow_api.create_page_da_action (
  p_id => 5267826043717024 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 5267504927716994 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_SUBMIT_PAGE'
 ,p_attribute_02 => 'Y'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 5724901238632920 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'Auto Refresh Part1'
 ,p_event_sequence => 20
 ,p_triggering_element_type => 'REGION'
 ,p_triggering_region_id => 4693323469817483 + wwv_flow_api.g_id_offset
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'mousedown'
  );
wwv_flow_api.create_page_da_action (
  p_id => 5725205608632984 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 5724901238632920 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'Y'
 ,p_action => 'NATIVE_SET_VALUE'
 ,p_affected_elements_type => 'ITEM'
 ,p_affected_elements => 'P1_CURRENT_NO_OF_RECS,P1_REFRESH_PAGE,P1_LAST_NO_OF_RECS'
 ,p_attribute_01 => 'SQL_STATEMENT'
 ,p_attribute_03 => '-- counts the number of records to be processed (current_count)'||unistr('\000a')||
'-- compares against the last refresh (no_of_recs_changed) if the count <> 0 a refresh is done in the next dynamic action'||unistr('\000a')||
'-- sets the P1_last_no_of_recs to the current number'||unistr('\000a')||
' select count(*) current_count, '||unistr('\000a')||
'        count(*) - NVL(:P1_LAST_NO_OF_RECS, count(*)) no_of_recs_changed,'||unistr('\000a')||
'        count(*) set_last_count'||unistr('\000a')||
' from AP_INVOICES_ALL I  '||unistr('\000a')||
' where BATCH_ID = :P1_BATCH_ID'||unistr('\000a')||
' and DOC_SEQUENCE_VALUE is not null'
 ,p_attribute_07 => 'P1_CURRENT_NO_OF_RECS,P1_REFRESH_PAGE,P1_LAST_NO_OF_RECS'
 ,p_attribute_08 => 'Y'
 ,p_attribute_09 => 'N'
 ,p_stop_execution_on_error => 'Y'
 ,p_wait_for_result => 'Y'
 ,p_da_action_comment => 'this dynamic action:'||unistr('\000a')||
' counts the number of records there are to be processed (populates p1_current_no_of_recs),'||unistr('\000a')||
''||unistr('\000a')||
'counts the number of differences between the last count and the current count (populates p1_refresh_page). This field has a dynamic action to refresh the page if the count is not 0 (using partial page refresh on the region)'||unistr('\000a')||
''||unistr('\000a')||
'sets the p1_last_no_of_recs to the current value'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 5728926350678073 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'Auto Refresh Part2'
 ,p_event_sequence => 30
 ,p_triggering_element_type => 'ITEM'
 ,p_triggering_element => 'P1_REFRESH_PAGE'
 ,p_triggering_condition_type => 'NOT_EQUALS'
 ,p_triggering_expression => '0'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'change'
 ,p_da_event_comment => 'The field P1_Refresh Page is set up in the dynamic action ''Auto Refresh Part2''. If this field is!= 0 then the page needs refreshing'
  );
wwv_flow_api.create_page_da_action (
  p_id => 5729200874678149 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 5728926350678073 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_REFRESH'
 ,p_affected_elements_type => 'REGION'
 ,p_affected_region_id => 4693323469817483 + wwv_flow_api.g_id_offset
 ,p_stop_execution_on_error => 'Y'
 ,p_da_action_comment => 'Refresh page - needs partial processing set in the region -> reports attributes tab.'||unistr('\000a')||
'May need to submit page if we need to save records'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'XX:XXAP_SCAN:SCAN_ID';

wwv_flow_api.create_page_process(
  p_id     => 4697625049817489 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>4695613728817486 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '<SPAN STYLE="color: #006633" STYLE="font-size: 18px"  >#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.</SPAN>',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'begin'||unistr('\000a')||
' :P1_MODE := ''New'';'||unistr('\000a')||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 4731416881246527 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'mode',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>4700131128878666 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4700422516211053 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'SCAN_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4700522605211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'PDF',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4700617897211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'BATCH_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4852909864310077 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'BATCH_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 5021712784237424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'ASSIGNED_TO',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4853011734310080 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 6,
  p_query_column_name=> 'ENTITY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4700927451211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 7,
  p_query_column_name=> 'STATUS',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701030464211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 8,
  p_query_column_name=> 'SCAN_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701125185211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 9,
  p_query_column_name=> 'SCAN_EXCEPTION',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701222554211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 10,
  p_query_column_name=> 'CHANGE_ENTITY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701317318211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 11,
  p_query_column_name=> 'ORG_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4853621383310080 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 12,
  p_query_column_name=> 'VOUCHER_NUMBER',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701528264211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 13,
  p_query_column_name=> 'CREATED_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701829922211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 14,
  p_query_column_name=> 'NEW_ORG_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4701910351211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 15,
  p_query_column_name=> 'NEW_SCAN_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4702021927211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 16,
  p_query_column_name=> 'MDM',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4702114724211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 17,
  p_query_column_name=> 'COMMENTS',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4702225390211054 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 18,
  p_query_column_name=> 'MDM_START_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4702309754211055 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 19,
  p_query_column_name=> 'LAST_UPDATE_DATE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4702411174211055 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4693323469817483 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 20,
  p_query_column_name=> 'RAG',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00005
prompt  ...PAGE 5: Attachments
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 5
 ,p_user_interface_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_name => 'Attachments'
 ,p_step_title => 'Attachments'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Attachments'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_required_role => 4938212389225380 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DEAKIA10'
 ,p_last_upd_yyyymmddhh24miss => '20140331141042'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4264119983669381 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'attachment',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210376842276236379+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4264317657669382 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_SCAN_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 4264119983669381+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'scan id',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'DECLARE'||unistr('\000a')||
'    v_mime VARCHAR2(48);'||unistr('\000a')||
'    v_length NUMBER;'||unistr('\000a')||
'    v_file_name VARCHAR2(2000);'||unistr('\000a')||
'    Lob_loc BLOB;'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
''||unistr('\000a')||
'   SELECT  ''application/pdf'' MIME_TYPE, '||unistr('\000a')||
'           S.SCAN_BLOB FILE_ATTACHMENT, '||unistr('\000a')||
'           ''pdf_file.pdf'' COMP_FILENAME,'||unistr('\000a')||
'           DBMS_LOB.GETLENGTH(s.SCAN_BLOB)'||unistr('\000a')||
'    INTO   v_mime,lob_loc,v_file_name,v_length'||unistr('\000a')||
'    FROM   XX.XXAP_SCAN S'||unistr('\000a')||
'    WHERE  s.scan_id = :P5_SCAN_ID;'||unistr('\000a')||
''||unistr('\000a')||
'--'||unistr('\000a')||
'-- set up ';

p:=p||'HTTP header'||unistr('\000a')||
'--'||unistr('\000a')||
'-- use an NVL around the mime type and'||unistr('\000a')||
'-- if it is a null set it to application/octect'||unistr('\000a')||
'-- application/octect may launch a download window from windows -- will be PDF'||unistr('\000a')||
''||unistr('\000a')||
'  owa_util.mime_header( nvl(v_mime,''application/octet''),FALSE );'||unistr('\000a')||
'  '||unistr('\000a')||
'-- set the size so the browser knows how much to download'||unistr('\000a')||
'  htp.p(''Content-length: '' || v_length);'||unistr('\000a')||
'  '||unistr('\000a')||
'-- the filename will be used by the browser if t';

p:=p||'he users does a save '||unistr('\000a')||
''||unistr('\000a')||
'  htp.p(''Content-Disposition: attachment;'||unistr('\000a')||
'          filename="''||replace(replace(substr(v_file_name,instr(v_file_name,''/'')+1),'||unistr('\000a')||
'                                             CHR(10),null),CHR(13),null)|| ''"'');'||unistr('\000a')||
''||unistr('\000a')||
'                     '||unistr('\000a')||
'-- close the headers'||unistr('\000a')||
'  owa_util.http_header_close;'||unistr('\000a')||
'  '||unistr('\000a')||
'-- download the BLOB'||unistr('\000a')||
'   wpg_docload.download_file( Lob_loc );'||unistr('\000a')||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 4264531343669384 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'open_attachment',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00006
prompt  ...PAGE 6: Change Entity
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 6
 ,p_user_interface_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Change Entity'
 ,p_step_title => 'Change Entity'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_required_role => 4938212389225380 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DEAKIA10'
 ,p_last_upd_yyyymmddhh24miss => '20140515141957'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4602010972850486 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_plug_name=> 'Change Entity',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210375941716236378+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4602224765850486 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 30,
  p_button_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P6_SCAN_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4602423261850487 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 10,
  p_button_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4602627741850488 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4602807592850499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_SCAN_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Scan Id',
  p_source=>'SCAN_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4603018183850501 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_BATCH_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Batch Id',
  p_source=>'BATCH_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4603416573850505 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_SCAN_EXCEPTION',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Scan Exception',
  p_source=>'SCAN_EXCEPTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4603605568850506 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_ORG_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'ORG_ID',
  p_source=>'ORG_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4604027250850507 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_CREATED_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Created Date',
  p_source=>'CREATED_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4604214122850508 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_VOUCHER_NUMBER',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Voucher Number',
  p_source=>'VOUCHER_NUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4604615674850510 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_NEW_ORG_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'New Entity',
  p_source=>'NEW_ORG_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'select name D, org_id R  from  XXICL_IBS_EBS_ENTITIES order by 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4604813497850511 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_NEW_SCAN_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'New Scan Id',
  p_source=>'NEW_SCAN_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4605023202850512 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_ENTITY_COMMENTS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comments',
  p_source=>'ENTITY_COMMENTS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 1000,
  p_cHeight=> 4,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4605201232850513 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_MDM_START_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Mdm Start Date',
  p_source=>'MDM_START_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4605420862850514 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_LAST_UPDATE_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 140,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Last Update Date',
  p_source=>'LAST_UPDATE_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4609908667886311 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_BATCH_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Batch',
  p_source=>'select B.BATCH_NAME '||unistr('\000a')||
'from ap_batches_all B where  B.BATCH_ID = :P6_BATCH_ID',
  p_source_type=> 'QUERY',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4611315087944124 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_CURRENT_ENTITY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 55,
  p_item_plug_id => 4602010972850486+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Current Entity',
  p_source=>'select e.name from  XXICL_IBS_EBS_ENTITIES E where E.ORG_ID = :P6_ORG_ID',
  p_source_type=> 'QUERY',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|XX:XXAP_SCAN:P6_SCAN_ID:SCAN_ID';

wwv_flow_api.create_page_process(
  p_id     => 4606032754850516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from XXAP_SCAN',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
''||unistr('\000a')||
'ln_scan_exception NUMBER;'||unistr('\000a')||
''||unistr('\000a')||
'begin'||unistr('\000a')||
''||unistr('\000a')||
'  if :p6_new_org_id is not null '||unistr('\000a')||
'  then '||unistr('\000a')||
''||unistr('\000a')||
'    select distinct  lookup_code  '||unistr('\000a')||
'    into ln_scan_exception'||unistr('\000a')||
'    from fnd_lookup_values '||unistr('\000a')||
'    where lookup_type = ''XXAP_SCANNED_INV_EXCEPTIONS'' '||unistr('\000a')||
'    and description = ''Incorrect Legal Entity on filename'';'||unistr('\000a')||
''||unistr('\000a')||
'    :p6_scan_exception := ln_scan_exception ;'||unistr('\000a')||
''||unistr('\000a')||
'  end if;'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 5245819173049257 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'update exception',
  p_process_sql_clob => p,
  p_process_error_message=> 'Failed to update the exception',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>4602224765850486 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'XX:XXAP_SCAN:P6_SCAN_ID:SCAN_ID|U';

wwv_flow_api.create_page_process(
  p_id     => 4606214381850518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of XXAP_SCAN',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'6';

wwv_flow_api.create_page_process(
  p_id     => 4606429877850518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 6
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00007
prompt  ...PAGE 7: Create Users
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 7
 ,p_user_interface_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Create Users'
 ,p_step_title => 'Create Users'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_required_role => 4939109142242157 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'DEAKIA10'
 ,p_last_upd_yyyymmddhh24miss => '20140826100433'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||unistr('\000a')||
'"USER_ID",'||unistr('\000a')||
'"USER_ID" USER_ID_DISPLAY,'||unistr('\000a')||
'"USER_NAME",'||unistr('\000a')||
'"USER_ROLE"'||unistr('\000a')||
'from XX.XXAP_SCAN_USERS';

wwv_flow_api.create_report_region (
  p_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 7,
  p_name=> 'Tabular Form',
  p_region_name=>'',
  p_template=> 31210376842276236379+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 15,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'UPDATABLE_SQL_QUERY',
  p_required_role => 4939109142242157+ wwv_flow_api.g_id_offset,
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 31210378052302236381+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '50',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> '(null)',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_WITH_LINKS',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4931520999763373 + wwv_flow_api.g_id_offset,
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CHECK$01',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Select Row',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'CHECKBOX',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_derived_column=> 'Y',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s:=s||'XXAP_SCAN_USERS_SEQ';

wwv_flow_api.create_report_columns (
  p_id=> 4929723950763219 + wwv_flow_api.g_id_offset,
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'USER_ID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'User Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'HIDDEN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source_type=> 'S',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN_USERS',
  p_ref_column_name=> 'USER_ID',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4929815847763252 + wwv_flow_api.g_id_offset,
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'USER_ID_DISPLAY',
  p_column_display_sequence=> 3,
  p_column_heading=> 'User Id',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN_USERS',
  p_ref_column_name=> 'USER_ID_DISPLAY',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4929901738763252 + wwv_flow_api.g_id_offset,
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'USER_NAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'User Name',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'POPUPKEY_QUERY',
  p_inline_lov=> 'select USER_NAME d, USER_NAME r'||unistr('\000a')||
'from   FND_USER'||unistr('\000a')||
'where NVL(END_DATE,sysdate+1) > sysdate'||unistr('\000a')||
'order by 1',
  p_lov_show_nulls=> 'NO',
  p_report_column_width=> '32',
  p_column_width=> '32',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'NO',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN_USERS',
  p_ref_column_name=> 'USER_NAME',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4930030997763252 + wwv_flow_api.g_id_offset,
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'USER_ROLE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'User Role',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'SELECT_LIST',
  p_inline_lov=> 'STATIC:Standard;STANDARD,Admin;ADMIN',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '16',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'NO',
  p_include_in_export=> 'Y',
  p_ref_table_name=> 'XXAP_SCAN_USERS',
  p_ref_column_name=> 'USER_ROLE',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4930425130763266 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 40,
  p_button_plug_id => 4929411898763171+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Add Row',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.widget.tabular.addRow();',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4930226548763266 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 30,
  p_button_plug_id => 4929411898763171+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Save',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4930124747763266 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 10,
  p_button_plug_id => 4929411898763171+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4930330446763266 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 20,
  p_button_plug_id => 4929411898763171+wwv_flow_api.g_id_offset,
  p_button_name    => 'MULTI_ROW_DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4931600713763373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'XX:XXAP_SCAN_USERS:USER_ID';

wwv_flow_api.create_page_process(
  p_id     => 4931104547763355 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 7,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_UPDATE',
  p_process_name=> 'ApplyMRU',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>4930226548763266 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'XX:XXAP_SCAN_USERS:USER_ID';

wwv_flow_api.create_page_process(
  p_id     => 4931303353763373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 7,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_region_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_process_type=> 'MULTI_ROW_DELETE',
  p_process_name=> 'ApplyMRD',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when=>'MULTI_ROW_DELETE',
  p_process_when_type=>'REQUEST_EQUALS_CONDITION',
  p_process_success_message=> '#MRD_COUNT# row(s) deleted.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 7
--
 
begin
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4932001977774461 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'USER_ID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4932102447774463 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'USER_ID_DISPLAY',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4932208241774463 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'USER_NAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 4932328536774463 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 4929411898763171 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'USER_ROLE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00021
prompt  ...PAGE 21: MDM SUPPLIER
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 21
 ,p_user_interface_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_name => 'MDM SUPPLIER'
 ,p_step_title => 'MDM SUPPLIER'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'MDM SUPPLIER'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_step_template => 31210375166551236377 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_page_comment => 'VERSION FOR SCANNING.'||unistr('\000a')||
'Same as Page 21 from MDM with the following changes:'||unistr('\000a')||
''||unistr('\000a')||
'1. New field P21_SCAN_ID'||unistr('\000a')||
'2. Amended create_workflow to add :'||unistr('\000a')||
''||unistr('\000a')||
'update xxap_scan set mdm_workflow = ln_request_id,'||unistr('\000a')||
'                     MDM_START_DATE = sysdate'||unistr('\000a')||
'where scan_id = :P21_scan_id;'||unistr('\000a')||
''
 ,p_last_updated_by => 'DEAKIA10'
 ,p_last_upd_yyyymmddhh24miss => '20140326124210'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4267730223743579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Supplier Details',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210375941716236378+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => false,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4271912979743661 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Bank Details',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210376842276236379+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => false,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4277801972743692 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'notes',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210376537125236379+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => false,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4278218493743693 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Help',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210376455678236379+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 15,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => false,
  p_plug_display_column=> 4,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'valign=top',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4267929326743591 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 10,
  p_button_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_button_name    => 'Cancel',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Back',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4268104330743592 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 40,
  p_button_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(31210380452818236384+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Submit Request',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_condition=> 'P21_SUPPLIER_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4281725433743730 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4268329626743592 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CONTACT_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 538,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Contact Name',
  p_source=>'CONTACT_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4268530047743593 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CONTACT_PHONE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 540,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Contact Phone',
  p_source=>'CONTACT_PHONE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4268729392743594 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CONTACT_EMAIL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 542,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Contact Email',
  p_source=>'CONTACT_EMAIL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4268902970743594 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_REQUEST_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 536,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> ' XX_MDM_request_seq.nextval;',
  p_item_default_type=> 'PLSQL_EXPRESSION',
  p_prompt=>'Request Id',
  p_source=>'REQUEST_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4269112400743595 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_REQUEST_DATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 546,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Request Date',
  p_source=>'REQUEST_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4269330436743595 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_COUNTRY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 547,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Country',
  p_source=>'COUNTRY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4269507185743596 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SUPPLIER_WEBSITE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 544,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Supplier Website',
  p_source=>'SUPPLIER_WEBSITE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4269714694743596 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_VAT_NO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 531,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Vat No',
  p_source=>'VAT_NO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4269915835743597 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ADDRESS_LINE1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 535,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Address Line1',
  p_source=>'ADDRESS_LINE1',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4270104899743601 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ADDRESS_LINE2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 537,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Address Line2',
  p_source=>'ADDRESS_LINE2',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4270316839743602 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ADDRESS_LINE3',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 539,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Address Line3',
  p_source=>'ADDRESS_LINE3',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4270514383743602 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CITY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 541,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'City',
  p_source=>'CITY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4270724569743603 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PROVINCE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 543,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'State',
  p_source=>'PROVINCE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4270914901743603 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_POSTCODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 545,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Postcode / Zip',
  p_source=>'POSTCODE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 12,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4271107773743604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SUPPLIER_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 530,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Supplier Id',
  p_source=>'SUPPLIER_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4271316681743604 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ENTITY_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 532,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Entity',
  p_source=>'ENTITY_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'ORG_ENTITY',
  p_lov=> 'SELECT  name || '' ('' || ATTRIBUTE6 || '')'' d , organization_id r'||unistr('\000a')||
'from HR_ALL_ORGANIZATION_UNITS'||unistr('\000a')||
'where sysdate between DATE_FROM and NVL(DATE_TO, ''01-Dec-2050'')'||unistr('\000a')||
'AND ATTRIBUTE6 IS NOT NULL'||unistr('\000a')||
'order by ATTRIBUTE6',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>' ',
  p_lov_null_value=> '%null%',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4271510113743659 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SUPPLIER_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 533,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Supplier Name',
  p_source=>'SUPPLIER_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4271728489743660 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_COMPANY_REG_NO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 534,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Company/Tax Registration Number',
  p_source=>'COMPANY_REG_NO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4272103162743661 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BRANCH_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 505,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Branch Name',
  p_source=>'BRANCH_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter Branch Number/Sort Code';

wwv_flow_api.create_page_item(
  p_id=>4272314684743662 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_SORT_CODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 507,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Branch Number',
  p_source=>'SORT_CODE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 10,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4272828084743672 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ACCOUNT_NUMBER',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 509,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Account Number',
  p_source=>'ACCOUNT_NUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 20,
  p_cMaxlength=> 30,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4273019023743673 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ACCOUNT_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 520,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Account Name',
  p_source=>'ACCOUNT_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4273222268743673 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SWIFT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 523,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Swift',
  p_source=>'SWIFT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4273427403743674 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_IBAN',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 524,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Iban',
  p_source=>'IBAN',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 50,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4273631848743674 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CURRENCY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 525,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Currency',
  p_source=>'CURRENCY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4273804436743675 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PAYMENT_TERMS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 504,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>' &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Payment Terms',
  p_source=>'PAYMENT_TERMS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4274029574743675 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_INVOICE_CURRENCY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 506,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Invoice and Payment Currency',
  p_source=>'INVOICE_CURRENCY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'CURRENCY',
  p_lov=> 'select currency_code d, currency_code r'||unistr('\000a')||
'from FND_CURRENCIES_VL'||unistr('\000a')||
'WHERE END_DATE_ACTIVE IS NULL '||unistr('\000a')||
'and  ENABLED_FLAG = ''Y'''||unistr('\000a')||
'order by currency_code',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>' ',
  p_lov_null_value=> '%null%',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4274200065743676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PAYMENT_CURRENCY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 508,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Payment Currency',
  p_source=>'PAYMENT_CURRENCY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4274423809743676 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SUPPLIER_NUMBER',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 526,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Supplier Number',
  p_source=>'SUPPLIER_NUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4274608904743677 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_USER_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 527,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'User Id',
  p_source=>'USER_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4274818997743677 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_POSTCODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 521,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Postcode  / Zip',
  p_source=>'BANK_POSTCODE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 10,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4275022763743678 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_CITY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 517,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank City',
  p_source=>'BANK_CITY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4275205363743678 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_ADDRESS_LINE2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 513,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Address Line2',
  p_source=>'BANK_ADDRESS_LINE2',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4275425887743679 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ATTACHMENT1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 528,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Attachment1',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_FILE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'WWV_FLOW_FILES',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4275605521743679 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ATTACHMENT2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 529,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Attachment2',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_FILE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'WWV_FLOW_FILES',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4275801532743680 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_REMITTANCE_EMAIL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 510,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Remittance Email',
  p_source=>'REMITTANCE_EMAIL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4276025398743680 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PAYMENT_METHOD',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 512,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Payment Method',
  p_source=>'PAYMENT_METHOD',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'PAYMENT_METHOD',
  p_lov=> '.'||to_char(4281807315743732 + wwv_flow_api.g_id_offset)||'.',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>' ',
  p_lov_null_value=> '%null%',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4276202092743681 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_VAT_CODE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 514,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Invoice VAT Code',
  p_source=>'VAT_CODE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4276402660743689 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ALLOW_AWT_FLAG',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 516,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Allow Withholding Tax',
  p_source=>'ALLOW_AWT_FLAG',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC2:No;N,Yes;Y',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4276623693743689 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_AWT_GROUP_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 518,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Withholding Tax Group',
  p_source=>'AWT_GROUP_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4276826055743690 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_COUNTRY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 522,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Country',
  p_source=>'BANK_COUNTRY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4277032425743690 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_PROVINCE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 519,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank State',
  p_source=>'BANK_PROVINCE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4277201340743691 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 503,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Name',
  p_source=>'BANK_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4277414168743691 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_ADDRESS_LINE1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 511,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Address Line1',
  p_source=>'BANK_ADDRESS_LINE1',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4277620261743692 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BANK_ADDRESS_LINE3',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 515,
  p_item_plug_id => 4271912979743661+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bank Address Line3',
  p_source=>'BANK_ADDRESS_LINE3',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 40,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 5,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4278018412743693 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ADDITIONAL_NOTES',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 95,
  p_item_plug_id => 4277801972743692+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Additional Notes',
  p_source=>'ADDITIONAL_NOTES',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 145,
  p_cMaxlength=> 500,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4278411222743694 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_HELP2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 502,
  p_item_plug_id => 4278218493743693+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_pre_element_text=>'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 24px"><span style="color: #3366cc">Supplier Bank</span><b><span style="color: #3366cc"> </span>- You can submit a request for a supplier to be setup but please note the supplier’s bank details are required for payments.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
'<b></b>'||unistr('\000a')||
''||unistr('\000a')||
'<b></b>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 150px"></span>'||unistr('\000a')||
'Enter the:'||unistr('\000a')||
'Bank Name,'||unistr('\000a')||
'Branch Name,'||unistr('\000a')||
'Branch Number,'||unistr('\000a')||
'Bank Address,'||unistr('\000a')||
'Account Name,'||unistr('\000a')||
'Account Number,'||unistr('\000a')||
'Swift/BIC,'||unistr('\000a')||
'IBAN,'||unistr('\000a')||
'Currency</span></p>'||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc"> Payment Terms</span><b><span style="color: #3366cc"> </span>- State the supplier’s payment terms.<b><b/>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Invoice and Payment Currency</span><b><span style="color: #3366cc"> </span>- Enter the invoice and payment currency.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Remittance Email</span><b><span style="color: #3366cc"> </span>- Enter '||unistr('\000a')||
'the Supplier''s remittance email address.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Payment Method</span><b><span style="color: #3366cc"> </span>- Select the Payment method.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc"> VAT Code</span><b><span style="color: #3366cc"> </span> - Select the VAT Code (%). </span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Allow Withholding Tax</span><b><span style="color: #3366cc"> </span>- Select withholding Tax</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Withholding Tax Group</span><b><span style="color: #3366cc"> </span>- Select the Withholding Tax Group.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc"> Additional Notes</span><b><span style="color: #3366cc"> </span>- Please enter any additional information that is relevant to your request.</span></b></p>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4278618510743695 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_HELP',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 190,
  p_item_plug_id => 4278218493743693+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_pre_element_text=>'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 36px"><span style="color: #3366cc">How To</span></span></span></span></p>'||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><b>This form is used to request a new supplier.</b></span></span></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><b>Requests to add supplier details will be approved by the in country Financial Controller/Financial Director.'||unistr('\000a')||
'</b></span></span></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><b>Please note that this form is for new suppliers only and supplier amendments should be requested through the Edit Supplier Details form.</b></span></span></p>'||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><b>The following information is required:<b></span></span></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc"> Entity</span><b><span style="color: #3366cc"> </span>- Select the entity that will use this supplier.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc"> Supplier Name</span><b><span style="color: #3366cc"> </span>- Type in the name of the supplier.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc"> Company/Tax Registration Number</span><b><span style="color: #3366cc"> </span>- Enter the company/tax registration number of the supplier.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Address</span><b><span style="color: #3366cc"> </span>- Enter the supplier’s address. This consists of:<b></b>'||unistr('\000a')||
'Address Line 1,'||unistr('\000a')||
'Address Line 2,'||unistr('\000a')||
'Address  Line 3,'||unistr('\000a')||
'Town/City,'||unistr('\000a')||
'State,'||unistr('\000a')||
'Post Code/Zip.</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Contact</span><b><span style="color: #3366cc"> </span>- Enter contact details: Name, Phone number and Email</span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
'<p style="margin-left: 80px"><b><b><span style="font-family: arial,helvetica,sans-serif"><span style="font-size: 18px"><span style="color: #3366cc">Supplier Website</span><b><span style="color: #3366cc"> </span>- Enter the supplier’s website. </span></b></p>'||unistr('\000a')||
''||unistr('\000a')||
'<b></b>'||unistr('\000a')||
''||unistr('\000a')||
'<b></b>'||unistr('\000a')||
'<b></b>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 80,
  p_cMaxlength=> 2000,
  p_cHeight=> 50,
  p_cAttributes=> 'nowrap',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template=> 31210379949007236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4756328717192730 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SCAN_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 557,
  p_item_plug_id => 4267730223743579+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Scan Id',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380063917236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4278917414743696 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P21_ENTITY_ID',
  p_validation_sequence=> 10,
  p_validation => 'P21_ENTITY_ID',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Entity</span>',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4271316681743604 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4279103273743697 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'SUPPLIER_NAME',
  p_validation_sequence=> 20,
  p_validation => 'P21_SUPPLIER_NAME',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Supplier Name</span>',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4271510113743659 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4279322130743697 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'ADDRESS_LINE1',
  p_validation_sequence=> 30,
  p_validation => 'P21_ADDRESS_LINE1',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Address</span>',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4269915835743597 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4279510656743697 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'COUNTRY',
  p_validation_sequence=> 40,
  p_validation => 'P21_COUNTRY',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Country</span>',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4269330436743595 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4279726550743698 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'INVOICE_CURRENCY',
  p_validation_sequence=> 70,
  p_validation => 'P21_INVOICE_CURRENCY',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Invoice Currency</span>',
  p_validation_condition_type=> 'NEVER',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4274029574743675 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4279925769743698 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'PAYMENT_CURRENCY',
  p_validation_sequence=> 80,
  p_validation => 'P21_PAYMENT_CURRENCY',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Payment Currency</span>',
  p_validation_condition_type=> 'NEVER',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4274200065743676 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4280117974743698 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'ACCOUNT_NAME',
  p_validation_sequence=> 90,
  p_validation => 'P21_ACCOUNT_NAME',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Account Name</span>',
  p_validation_condition_type=> 'NEVER',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4273019023743673 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4280316360743699 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'ACCOUNT_NUMBER',
  p_validation_sequence=> 100,
  p_validation => 'P21_ACCOUNT_NUMBER',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Account Number</span>',
  p_validation_condition_type=> 'NEVER',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4272828084743672 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4280528808743699 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'CURRENCY',
  p_validation_sequence=> 110,
  p_validation => 'P21_CURRENCY',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Please enter a valid Currency</span>',
  p_validation_condition_type=> 'NEVER',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4273631848743674 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4280710437743699 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'Numerical Value Only',
  p_validation_sequence=> 120,
  p_validation => 'P21_ACCOUNT_NUMBER',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => '<span style="color: #006633" style="font-size: 18px"  >Account Number must be a numeric value</span>',
  p_validation_condition=> 'P21_ACCOUNT_NUMBER',
  p_validation_condition_type=> 'ITEM_IS_NOT_NULL',
  p_when_button_pressed=> 4268104330743592 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4272828084743672 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|XXICL_CUSTOMISATION:XX_MDM_SUPPLIER:P21_SUPPLIER_ID:SUPPLIER_ID';

wwv_flow_api.create_page_process(
  p_id     => 4280811453743700 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from XX_MDM_SUPPLIER',
  p_process_sql_clob => p,
  p_process_error_message=> 'Unable to fetch row.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'DECLARE'||unistr('\000a')||
''||unistr('\000a')||
'   ln_request_id  NUMBER;'||unistr('\000a')||
'   l_amount       NUMBER;'||unistr('\000a')||
'   l_cnt          PLS_INTEGER;'||unistr('\000a')||
'   l_blob_content BLOB;'||unistr('\000a')||
'   l_mime_type    VARCHAR2(80 BYTE);'||unistr('\000a')||
'   l_id           VARCHAR2(30);'||unistr('\000a')||
'   '||unistr('\000a')||
'BEGIN'||unistr('\000a')||
''||unistr('\000a')||
'  -- ln_request_id  := XX_MDM_request_seq.nextval;'||unistr('\000a')||
''||unistr('\000a')||
'   -- XX_MDM_request_seq.nextval used within :P21_REQUEST_ID'||unistr('\000a')||
''||unistr('\000a')||
'   ln_request_id     := :P21_REQUEST_ID;'||unistr('\000a')||
'   :P21_USER_ID      := :APP_USER;'||unistr('\000a')||
'   :P21_REQUES';

p:=p||'T_DATE := SYSDATE;'||unistr('\000a')||
''||unistr('\000a')||
'   --'||unistr('\000a')||
'   -- process attachment'||unistr('\000a')||
'   --'||unistr('\000a')||
'   IF :P21_ATTACHMENT1 IS NOT NULL'||unistr('\000a')||
'   THEN'||unistr('\000a')||
'   '||unistr('\000a')||
'      SELECT blob_content,  mime_type,  id'||unistr('\000a')||
'      INTO   l_blob_content,l_mime_type,l_id'||unistr('\000a')||
'      FROM   apex_application_files'||unistr('\000a')||
'      WHERE  name = :P21_ATTACHMENT1;'||unistr('\000a')||
''||unistr('\000a')||
'      -- find MIME type '||unistr('\000a')||
'      -- $IAS_ORACLE_HOME/Apache/Apache/conf/mime.types'||unistr('\000a')||
''||unistr('\000a')||
'      CASE WHEN upper(substr(:P21_ATTACHMENT1, inst';

p:=p||'r(:P21_ATTACHMENT1, ''.'')+1)) = ''DOCX'' and '||unistr('\000a')||
'                l_mime_type  = ''application/octet-stream'' THEN'||unistr('\000a')||
'			  '||unistr('\000a')||
'              l_mime_type := ''application/vnd.openxmlformats-officedocument.wordprocessingml.document'';'||unistr('\000a')||
''||unistr('\000a')||
'           WHEN upper(substr(:P21_ATTACHMENT1, instr(:P21_ATTACHMENT1, ''.'')+1)) = ''XLSX'' and '||unistr('\000a')||
'                l_mime_type  = ''application/octet-stream'' THEN'||unistr('\000a')||
'			  '||unistr('\000a')||
'              l_mime';

p:=p||'_type := ''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'';'||unistr('\000a')||
''||unistr('\000a')||
'           WHEN upper(substr(:P21_ATTACHMENT1, instr(:P21_ATTACHMENT1, ''.'')+1)) = ''MSG'' and '||unistr('\000a')||
'                l_mime_type  = ''application/octet-stream'' THEN'||unistr('\000a')||
'			  '||unistr('\000a')||
'              l_mime_type := ''application/vnd.ms-outlook'';'||unistr('\000a')||
''||unistr('\000a')||
'           ELSE '||unistr('\000a')||
'		       null; -- keep existing l_mime_type'||unistr('\000a')||
''||unistr('\000a')||
'      END CASE;'||unistr('\000a')||
''||unistr('\000a')||
'      -- Create Atta';

p:=p||'chment --'||unistr('\000a')||
'      INSERT INTO XX_MDM_ATTACHMENTS'||unistr('\000a')||
'                (attachment_id,        attachment_type,'||unistr('\000a')||
'		         request_id,    '||unistr('\000a')||
'                 filename,             file_attachment,'||unistr('\000a')||
'                 mime_type,            apex_file_id,'||unistr('\000a')||
'                 ATTACHMENT_NUMBER   ,'||unistr('\000a')||
'                 last_update_date)'||unistr('\000a')||
'      VALUES    (XX_MDM_ATTACHMENTS_seq.nextval, ''SUPPLIER'','||unistr('\000a')||
'		         ln_request_id, ';

p:=p||'-- workflow request to join to later'||unistr('\000a')||
'                 :P21_ATTACHMENT1,     l_blob_content,'||unistr('\000a')||
'                 l_mime_type,          l_id,'||unistr('\000a')||
'                 1,'||unistr('\000a')||
'                 SYSDATE);'||unistr('\000a')||
''||unistr('\000a')||
'				 '||unistr('\000a')||
'   END IF; -- end of :P21_ATTACHMENT IS NOT NULL'||unistr('\000a')||
'   '||unistr('\000a')||
'   '||unistr('\000a')||
'   ---------------------------------------------------'||unistr('\000a')||
''||unistr('\000a')||
'   --'||unistr('\000a')||
'   -- process attachment'||unistr('\000a')||
'   --'||unistr('\000a')||
'   IF :P21_ATTACHMENT2 IS NOT NULL'||unistr('\000a')||
'   THEN'||unistr('\000a')||
'   '||unistr('\000a')||
'      SELECT';

p:=p||' blob_content,  mime_type,  id'||unistr('\000a')||
'      INTO   l_blob_content,l_mime_type,l_id'||unistr('\000a')||
'      FROM   apex_application_files'||unistr('\000a')||
'      WHERE  name = :P21_ATTACHMENT2;'||unistr('\000a')||
''||unistr('\000a')||
'      -- find MIME type '||unistr('\000a')||
'      -- $IAS_ORACLE_HOME/Apache/Apache/conf/mime.types'||unistr('\000a')||
''||unistr('\000a')||
'      CASE WHEN upper(substr(:P21_ATTACHMENT2, instr(:P21_ATTACHMENT2, ''.'')+1)) = ''DOCX'' and '||unistr('\000a')||
'                l_mime_type  = ''application/octet-stream'' THEN'||unistr('\000a')||
'			  '||unistr('\000a')||
'    ';

p:=p||'          l_mime_type := ''application/vnd.openxmlformats-officedocument.wordprocessingml.document'';'||unistr('\000a')||
''||unistr('\000a')||
'           WHEN upper(substr(:P21_ATTACHMENT2, instr(:P21_ATTACHMENT2, ''.'')+1)) = ''XLSX'' and '||unistr('\000a')||
'                l_mime_type  = ''application/octet-stream'' THEN'||unistr('\000a')||
'			  '||unistr('\000a')||
'              l_mime_type := ''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'';'||unistr('\000a')||
''||unistr('\000a')||
'           WHEN upper(substr(:P21_ATT';

p:=p||'ACHMENT2, instr(:P21_ATTACHMENT2, ''.'')+1)) = ''MSG'' and '||unistr('\000a')||
'                l_mime_type  = ''application/octet-stream'' THEN'||unistr('\000a')||
'			  '||unistr('\000a')||
'              l_mime_type := ''application/vnd.ms-outlook'';'||unistr('\000a')||
''||unistr('\000a')||
'           ELSE '||unistr('\000a')||
'		       null; -- keep existing l_mime_type'||unistr('\000a')||
''||unistr('\000a')||
'      END CASE;'||unistr('\000a')||
''||unistr('\000a')||
'      -- Create Attachment --'||unistr('\000a')||
'      INSERT INTO XX_MDM_ATTACHMENTS'||unistr('\000a')||
'                (attachment_id,        attachment_type,'||unistr('\000a')||
'		         re';

p:=p||'quest_id,    '||unistr('\000a')||
'                 filename,             file_attachment,'||unistr('\000a')||
'                 mime_type,            apex_file_id,'||unistr('\000a')||
'                 ATTACHMENT_NUMBER   ,'||unistr('\000a')||
'                 last_update_date)'||unistr('\000a')||
'      VALUES    (XX_MDM_ATTACHMENTS_seq.nextval, ''SUPPLIER'','||unistr('\000a')||
'		         ln_request_id, -- workflow request to join to later'||unistr('\000a')||
'                 :P21_ATTACHMENT2,     l_blob_content,'||unistr('\000a')||
'                 l_mime_';

p:=p||'type,          l_id,'||unistr('\000a')||
'                 2,'||unistr('\000a')||
'                 SYSDATE);'||unistr('\000a')||
'				 '||unistr('\000a')||
'   END IF; -- end of :P21_ATTACHMENT2 IS NOT NULL'||unistr('\000a')||
'      '||unistr('\000a')||
'   --------------------------------------------------------------- '||unistr('\000a')||
'   '||unistr('\000a')||
'   -- Create Workflow --'||unistr('\000a')||
'   '||unistr('\000a')||
'   INSERT INTO xx_mdm_request ('||unistr('\000a')||
'      request_id,'||unistr('\000a')||
'      transaction_type,'||unistr('\000a')||
'      requester_user,'||unistr('\000a')||
'      request_date,'||unistr('\000a')||
'      status,'||unistr('\000a')||
'      workflow_id )'||unistr('\000a')||
'   VALUES (ln_requ';

p:=p||'est_id,'||unistr('\000a')||
'           ''SUPPLIER'','||unistr('\000a')||
'           :APP_USER,'||unistr('\000a')||
'           SYSDATE,'||unistr('\000a')||
'           ''IN_PROGRESS'','||unistr('\000a')||
'           ln_request_id );'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'   XX_MASTER_DATA_PKG.launch_mdm_approval(ln_request_id);'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'update xxap_scan set mdm_workflow = ln_request_id,'||unistr('\000a')||
'                     MDM_START_DATE = sysdate'||unistr('\000a')||
'where scan_id = :P21_scan_id;'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'commit;'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4281006495743701 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'create_workflow',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'XXICL_CUSTOMISATION:XX_MDM_SUPPLIER:P21_SUPPLIER_ID:SUPPLIER_ID|I';

wwv_flow_api.create_page_process(
  p_id     => 4281220946743728 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of XX_MDM_SUPPLIER',
  p_process_sql_clob => p,
  p_process_error_message=> '<span style="color: #ff0000" style="font-size: 18px"  >Unable to process this Record. This record has NOT been submitted for Approval.</span>'||unistr('\000a')||
'',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '<span style="color: #006633" style="font-size: 18px"  >Record Submitted for Approval.</span>'||unistr('\000a')||
'',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'21';

wwv_flow_api.create_page_process(
  p_id     => 4281403123743729 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 21
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login Page
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_user_interface_id => 31210381563635236386 + wwv_flow_api.g_id_offset
 ,p_name => 'Login Page'
 ,p_alias => 'LOGIN_DESKTOP'
 ,p_step_title => 'Login Page'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 31210374464261236374 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'DEAKIA10'
 ,p_last_upd_yyyymmddhh24miss => '20140826101758'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4774623689103440 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login Page',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31210375941716236378+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4774824956103441 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 4774623689103440+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Username',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4775029260103441 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4774623689103440+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_encrypt_session_state_yn=> 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4775230756103442 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 4774623689103440+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(31210380452818236384 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4776306625114665 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PAGE_REDIRECT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 4774623689103440+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Page Redirect',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4776629904119032 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_TOKEN',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 4774623689103440+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Token',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4776922140122637 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USER_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 4774623689103440+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'User Id',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31210380152160236383+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.send_login_username_cookie ('||unistr('\000a')||
'    p_username => lower(:P101_USERNAME) );';

wwv_flow_api.create_page_process(
  p_id     => 4775606362103442 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.login('||unistr('\000a')||
'    p_username => :P101_USERNAME,'||unistr('\000a')||
'    p_password => :P101_PASSWORD );';

wwv_flow_api.create_page_process(
  p_id     => 4775432291103442 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 4776001694103444 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P101_USERNAME := apex_authentication.get_login_username_cookie;';

wwv_flow_api.create_page_process(
  p_id     => 4775819621103443 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'BEGIN'||unistr('\000a')||
'   :P101_USER_ID := xx_apex_authenticate.deleteToken(:P101_TOKEN);'||unistr('\000a')||
'   :P101_USERNAME := xx_appl_common_pkg.get_user_name(:P101_USER_ID);'||unistr('\000a')||
'   :P101_PASSWORD := xx_apex_authenticate.generate_hash(:P101_USERNAME,5);'||unistr('\000a')||
'   APEX_CUSTOM_AUTH.login(P_UNAME      => :P101_USERNAME,'||unistr('\000a')||
'                          P_PASSWORD   => :P101_PASSWORD,'||unistr('\000a')||
'                          P_SESSION_ID => v(''APP_SESSION''),'||unistr('\000a')||
'      ';

p:=p||'                    P_APP_PAGE   => :APP_ID || '':'' || nvl(:P101_PAGE_REDIRECT,1));'||unistr('\000a')||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 4777100920183360 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 40,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Authenticate_Token',
  p_process_sql_clob => p,
  p_process_error_message=> 'Error in Authenticate_Token',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 31210382857701236391 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
null;
 
end;
/

prompt  ...page templates for application: 260
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 31210374464261236374
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210374464261236374 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'Login'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div'||
'>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody" height="70%" align="center" width="400">'||unistr('\000a')||
'<td width="100%" valign="top" height="100%" id="t20ContentBody" align="center">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valign="top" wid'||
'th="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 6
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 31210374551631236375
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210374551631236375 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'No Tabs'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div'||
'>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||unistr('\000a')||
'<td width="100%" valign="top" height="100%" id="t20ContentBody">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentRight'||
'">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<table class="t20Region t20RegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">'||unistr('\000a')||
'<a href="#BACK_LINK#" class="t20Button2">#OK#</a>'||unistr('\000a')||
'</td></tr>'||unistr('\000a')||
'<tr><td class="t20RegionBody">'||unistr('\000a')||
'  <p>#MESSAGE#</p>'||unistr('\000a')||
'  <strong>#ADDITIONAL_INFO#</strong>'||unistr('\000a')||
'  <br />'||unistr('\000a')||
'  <br />'||unistr('\000a')||
'  <div class="error_technical_info">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_sidebar
prompt  ......Page template 31210374662717236376
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210374662717236376 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'No Tabs with Sidebar'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div'||
'>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||unistr('\000a')||
'<td width="100%" valign="top" height="100%" id="t20ContentBody">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#'||
'</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" '
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 31210374736681236376
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210374736681236376 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'One Level Tabs'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<'||
'div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||unistr('\000a')||
'<td width="100%" valign="top" id="t20ContentBody">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valig'||
'n="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_current_tab => '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
 ,p_non_current_tab => '<a href="#TAB_LINK#">#TAB_LABEL#</a>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="5"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 1
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar
prompt  ......Page template 31210374834767236376
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210374834767236376 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'One Level Tabs Sidebar'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<'||
'div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||unistr('\000a')||
'<td width="100%" valign="top" id="t20ContentBody">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20Conten'||
'tMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_current_tab => '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||unistr('\000a')||
''
 ,p_non_current_tab => '<a href="#TAB_LINK#">#TAB_LABEL#</a>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="5"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 31210374950441236376
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210374950441236376 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'Popup'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td width="100%" valign="top">'||unistr('\000a')||
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
''
 ,p_footer_template => 
'#FORM_CLOSE##DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '<div class="t20NavigationBar">#BAR_BODY#</div>'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 4
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 31210375055026236377
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210375055026236377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'Printer Friendly'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" height="70%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<t'||
'd width="100%" valign="top"><div class="t20messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '<div class="t20NavigationBar">#BAR_BODY#</div>'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 5
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
 ,p_template_comment => '3'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 31210375166551236377
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210375166551236377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'Two Level Tabs'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'<div id="t20tablist">#TAB_CELLS#</div>'||unistr('\000a')||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||unistr('\000a')||
'<td width="100%" valign="top" id="t20ContentBody">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION'||
'_02##REGION_POSITION_04#</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_current_tab => '<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>'
 ,p_non_current_tab => '<a href="#TAB_LINK#">#TAB_LABEL#</a>'
 ,p_top_current_tab => '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
 ,p_top_non_curr_tab => '<a href="#TAB_LINK#">#TAB_LABEL#</a>'
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="5" '
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar
prompt  ......Page template 31210375257707236377
 
begin
 
wwv_flow_api.create_template (
  p_id => 31210375257707236377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 20
 ,p_name => 'Two Level Tabs with Sidebar'
 ,p_is_popup => false
 ,p_header_template => '<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_4_0.css" type="text/css" />'||unistr('\000a')||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#'
 ,p_box => 
'<div id="t20PageHeader">'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||unistr('\000a')||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'<div id="t20tablist">#TAB_CELLS#</div>'||unistr('\000a')||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||unistr('\000a')||
'<td width="100%" valign="top" id="t20ContentBody">'||unistr('\000a')||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##'||
'NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_footer_template => 
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||unistr('\000a')||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||unistr('\000a')||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<br class="t20Break"/>'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#G'||
'ENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_current_tab => '<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>'||unistr('\000a')||
''
 ,p_non_current_tab => '<a href="#TAB_LINK#">#TAB_LABEL#</a>'
 ,p_top_current_tab => '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||unistr('\000a')||
''
 ,p_top_non_curr_tab => '<a href="#TAB_LINK#">#TAB_LABEL#</a>'||unistr('\000a')||
''
 ,p_notification_message => '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||unistr('\000a')||
'<td class="tM"></td>'||unistr('\000a')||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="5"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'TABLE'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 31210380452818236384
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31210380452818236384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button'
 ,p_template => 
'<a href="#LINK#" class="t20Button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 20
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 31210380537277236384
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31210380537277236384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 1'
 ,p_template => 
'<a href="#LINK#" class="t20Button2" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_template_comment => 'XP Square FFFFFF'
 ,p_theme_id => 20
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 31210380637322236384
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31210380637322236384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 2'
 ,p_template => 
'<a href="#LINK#" class="t20Button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 20
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 31210380742483236384
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31210380742483236384 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 3'
 ,p_template => 
'<a href="#LINK#" class="t20Button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 2
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 20
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 31210375358849236377
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375358849236377 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20Borderless" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||
'<td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 20
 ,p_theme_class_id => 7
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 31210375436521236378
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375436521236378 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20Bracketed" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><'||
'td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Bracketed Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 18
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 31210375537011236378
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375537011236378 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="#REGION_STATIC_ID#" class="t20Breadcrumbs" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 20
 ,p_theme_class_id => 6
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 31210375661047236378
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375661047236378 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ButtonRegionwithTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td'||
'></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>#BODY#'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 20
 ,p_theme_class_id => 4
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 31210375736847236378
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375736847236378 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>#BODY#'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 17
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 31210375841638236378
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375841638236378 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ChartRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr'||
'><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Chart Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 31210375941716236378
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210375941716236378 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20FormRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||
'<td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 20
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 31210376047990236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376047990236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20HideShow" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header"><img src="#IMAGE_PREFIX#themes/theme_20/collapse_plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_STATIC_ID#_body'')" class="pb" alt="" />#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATI'||
'C_ID#_body" style="display:none;">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 1
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/list_region_with_icon_chart
prompt  ......region template 31210376142775236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376142775236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ListRegionwithIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></'||
'tr>'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'List Region with Icon (Chart)'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 31210376253223236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376253223236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="t20Region t20NavRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div>'||unistr('\000a')||
'<div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_theme_id => 20
 ,p_theme_class_id => 5
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 31210376355937236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376355937236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="t20Region t20NavRegionAlt" id="#REGION_STATIC_ID#"#REGION_ATTRIBUTES#><div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div><div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div></div>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_theme_id => 20
 ,p_theme_class_id => 16
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_title
prompt  ......region template 31210376455678236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376455678236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20RegionwithoutButtonsandTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Region without Buttons and Title'
 ,p_theme_id => 20
 ,p_theme_class_id => 19
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 31210376537125236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376537125236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20RegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Region without Title'
 ,p_theme_id => 20
 ,p_theme_class_id => 11
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 31210376659174236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376659174236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||unistr('\000a')||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||unistr('\000a')||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report Filter - Single Row'
 ,p_theme_id => 20
 ,p_theme_class_id => 31
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 31210376765776236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376765776236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ReportList" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||
'<td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report List'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 31210376842276236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376842276236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ReportRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<t'||
'r><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 31210376952231236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210376952231236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ReportsRegion100" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr'||
'>'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 31210377036970236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210377036970236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20ReportsRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr'||
'>'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 20
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 31210377144608236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210377144608236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20SidebarRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 20
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 31210377265957236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210377265957236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20SidebarRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 20
 ,p_theme_class_id => 3
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/top_bar
prompt  ......region template 31210377338698236379
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210377338698236379 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="rc-gray-top">'||unistr('\000a')||
'    <div class="rc-gray-top-r"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="rc-body">'||unistr('\000a')||
'    <div class="rc-body-r">'||unistr('\000a')||
'      <div class="rc-content-main">'||unistr('\000a')||
'        <div class="rc-left">'||unistr('\000a')||
'          #BODY#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="rc-right">'||unistr('\000a')||
'          #CLOSE##COPY##DELETE##CHANGE##EDIT##PREVIOUS##NE'||
'XT##CREATE##EXPAND#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="clear"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="rc-bottom">'||unistr('\000a')||
'    <div class="rc-bottom-r"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Top Bar'
 ,p_theme_id => 20
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 31210377441172236380
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210377441172236380 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20WizardRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<t'||
'r><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_theme_id => 20
 ,p_theme_class_id => 12
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 31210377546069236380
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31210377546069236380 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<table class="t20Region t20WizardRegionIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||unistr('\000a')||
'<tbody id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr'||
'>'||unistr('\000a')||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_theme_id => 20
 ,p_theme_class_id => 20
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 31210378563593236381
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button t20current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t20Button">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210378563593236381 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t20ButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanded
prompt  ......list template 31210378644379236382
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>31210378644379236382 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanded',
  p_theme_id  => 20,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="htmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 31210378744112236382
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>31210378744112236382 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 20,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 31210378848384236382
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t20current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>';

t2:=t2||'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210378848384236382 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t20HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 31210378964354236382
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210378964354236382 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="t20HorizontalLinksList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 31210379056420236382
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>31210379056420236382 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 20,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 31210379145147236382
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>31210379145147236382 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 20,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 31210379258687236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||unistr('\000a')||
'<td class="t20CurrentTab"><a href="#LINK#">#TEXT#</a></td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||unistr('\000a')||
'<td>&nbsp;</td>';

t2:=t2||'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||unistr('\000a')||
'<td class="t20Tab"><a href="#LINK#">#TEXT#</a></td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||unistr('\000a')||
'<td>&nbsp;</td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379258687236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table class="t20Tabs t20TabbedNavigationList" border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 31210379353322236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t20current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379353322236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20VerticalImagesList">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 31210379441218236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379441218236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t20VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 31210379561408236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379561408236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 20,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t20VerticalSidebarList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_links_without_bullets
prompt  ......list template 31210379663207236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379663207236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered Links without Bullets',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t20VerticalUnorderedLinkswithoutBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 31210379754006236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379754006236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t20VerticalUnorderedListwithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 31210379836514236383
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20current">#TEXT#</div>';

t2:=t2||'<div>#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31210379836514236383 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t20WizardProgressList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/apex_4_0_value_attribute_pairs
prompt  ......report template 31210377654358236380
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||unistr('\000a')||
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>'||unistr('\000a')||
'  <div class="report-col-val">#COLUMN_VALUE#</div>'||unistr('\000a')||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210377654358236380 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'APEX 4.0 - Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 31210377759288236380
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210377759288236380 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table class="t20Borderless t20Report" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'||unistr('\000a')||
'',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210377759288236380 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 31210377861096236380
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210377861096236380 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table class="t20HorizontalBorder t20Report" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210377861096236380 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 31210377943924236380
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'#COLUMN_VALUE#';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210377943924236380 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||unistr('\000a')||
'#TOP_PAGINATION#<tr><td><ul class="t20OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210377943924236380 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<li>',
  p_row_template_after_last =>'</li>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 31210378052302236381
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210378052302236381 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report t20Standard">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210378052302236381 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 31210378142802236381
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210378142802236381 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Standard t20Report">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>'||unistr('\000a')||
'<!--'||unistr('\000a')||
'init_htmlPPRReport(''#REGION_ID#'');'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'</htmldb:#REGION_ID#>'||unistr('\000a')||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210378142802236381 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 31210378253146236381
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2:=c2||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20dataalt">#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210378253146236381 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||unistr('\000a')||
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t20StandardAlternatingRowColors t20Report">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210378253146236381 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 31210378350270236381
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<div class="report-row">'||unistr('\000a')||
'  <div class="report-col-hdr">#1#</div>'||unistr('\000a')||
'  <div class="report-col-val">#2#</div>'||unistr('\000a')||
'</div>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210378350270236381 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Two Column Portlet',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">',
  p_row_template_after_rows =>'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 31210378449745236381
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr>'||unistr('\000a')||
'<th class="t20ReportHeader">#COLUMN_HEADER#</th>'||unistr('\000a')||
'<td class="t20data">#COLUMN_VALUE#</td>'||unistr('\000a')||
'</tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31210378449745236381 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary=""#REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t20ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31210378449745236381 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'',
  p_row_template_after_last =>'<tr><td colspan="2" class="t20seperate"><br /></td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 31210379949007236383
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31210379949007236383 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t20NoLabel">',
  p_template_body2=>'</span>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label
prompt  ......label template 31210380063917236383
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31210380063917236383 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_with_help
prompt  ......label template 31210380152160236383
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31210380152160236383 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t20OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label
prompt  ......label template 31210380244383236383
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31210380244383236383 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20Req">*</span><span class="t20RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_with_help
prompt  ......label template 31210380338593236384
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31210380338593236384 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20Req">*</span><a class="t20RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 31210380856333236384
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 31210380856333236384 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'',
  p_current_page_option=>'<a href="#LINK#" class="t20Current">#NAME#</a>',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'<b>&gt;</b>',
  p_after_last=>'',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 31210380955683236384
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 31210380955683236384 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t20HierarchicalMenu">',
  p_current_page_option=>'<li class="t20current"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 31210381344794236385
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 31210381344794236385 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#lov_16x16.gif',
  p_popup_icon_attr=>'width="16" height="16" alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css">'||unistr('\000a')||
''||unistr('\000a')||
'#THEME_CSS#',
  p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"',
  p_before_field_text=>'<div class="t20PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t20PopupBody">',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 31210381054009236384
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 31210381054009236384 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th scope="col" class="t20DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t20CalendarAlternative1Holder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t20CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div><br />',
  p_day_open_format=> '<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div><br />',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div><br />',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '',
  p_agenda_past_day_format => '',
  p_agenda_today_day_format => '',
  p_agenda_future_day_format => '',
  p_agenda_past_entry_format => '',
  p_agenda_today_entry_format => '',
  p_agenda_future_entry_format => '',
  p_month_data_format => '',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 31210381160933236385
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 31210381160933236385 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th scope="col" class="t20DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t20CalendarHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t20Calendar">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div><br />',
  p_day_open_format=> '<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div><br />',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div><br />',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '',
  p_agenda_past_day_format => '',
  p_agenda_today_day_format => '',
  p_agenda_future_day_format => '',
  p_agenda_past_entry_format => '',
  p_agenda_today_entry_format => '',
  p_agenda_future_entry_format => '',
  p_month_data_format => '',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calender
prompt  ......template 31210381259958236385
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 31210381259958236385 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calender',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t20SmallCalenderHolder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t20SmallCalender">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '',
  p_agenda_past_day_format => '',
  p_agenda_today_day_format => '',
  p_agenda_future_day_format => '',
  p_agenda_past_entry_format => '',
  p_agenda_today_entry_format => '',
  p_agenda_future_entry_format => '',
  p_month_data_format => '',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/traditional_blue
prompt  ......theme 31210381435538236386
begin
wwv_flow_api.create_theme (
  p_id =>31210381435538236386 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 20,
  p_theme_name=>'Traditional Blue',
  p_ui_type_name=>'DESKTOP',
  p_is_locked=>false,
  p_default_page_template=>31210374736681236376 + wwv_flow_api.g_id_offset,
  p_error_template=>31210374551631236375 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>31210375055026236377 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'',
  p_login_template=>31210374464261236374 + wwv_flow_api.g_id_offset,
  p_default_button_template=>31210380452818236384 + wwv_flow_api.g_id_offset,
  p_default_region_template=>31210376842276236379 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>31210375841638236378 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>31210375941716236378 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>31210376842276236379 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>31210376842276236379 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>31210377441172236380 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>31210375537011236378 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>31210376842276236379 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>null + wwv_flow_api.g_id_offset,
  p_default_report_template   =>31210378052302236381 + wwv_flow_api.g_id_offset,
  p_default_label_template=>31210380152160236383 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>31210380856333236384 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>31210381054009236384 + wwv_flow_api.g_id_offset,
  p_default_list_template=>31210379754006236383 + wwv_flow_api.g_id_offset,
  p_default_option_label=>31210380152160236383 + wwv_flow_api.g_id_offset,
  p_default_header_template=>null + wwv_flow_api.g_id_offset,
  p_default_footer_template=>null + wwv_flow_api.g_id_offset,
  p_default_page_transition=>'NONE',
  p_default_popup_transition=>'NONE',
  p_default_required_label=>31210380338593236384 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...theme styles
--
 
begin
 
null;
 
end;
/

prompt  ...theme display points
--
 
begin
 
null;
 
end;
/

prompt  ...build options
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 260
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...text messages
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations
--
prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/delete_confirm_msg
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 31219272740392050518 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

--application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Are you sure you want to leave this page without saving?';

wwv_flow_api.create_shortcut (
 p_id=> 31219276950330050532 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'OK_TO_GET_NEXT_PREV_PK_VALUE',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/ebs_responsibility
prompt  ......authentication 9675447144552330
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 9675447144552330 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'EBS_RESPONSIBILITY'
 ,p_scheme_type => 'NATIVE_CUSTOM'
 ,p_attribute_03 => 'APPS.xx_apex_authenticate.ebs_authenticate        '
 ,p_attribute_05 => 'N'
 ,p_invalid_session_type => 'LOGIN'
 ,p_logout_url => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101:&SESSION.:LOGOUT'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Access when the correct EBS responisbility is granted'
  );
null;
 
end;
/

--application/shared_components/security/authentication/application_express_authentication
prompt  ......authentication 31210381753761236387
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 31210381753761236387 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Application Express Authentication'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
  );
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

prompt  ...plugins
--
--application/shared_components/plugins/dynamic_action/com_skillbuilders_modal_page
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'COM_SKILLBUILDERS_MODAL_PAGE'
 ,p_display_name => 'SkillBuilders Modal Page (2.0.0)'
 ,p_category => 'EFFECT'
 ,p_supported_ui_types => 'DESKTOP'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'FUNCTION apex_modal_page_render ('||unistr('\000a')||
'   p_dynamic_action IN APEX_PLUGIN.T_DYNAMIC_ACTION,'||unistr('\000a')||
'   p_plugin         IN APEX_PLUGIN.T_PLUGIN '||unistr('\000a')||
')'||unistr('\000a')||
''||unistr('\000a')||
'   RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT'||unistr('\000a')||
'   '||unistr('\000a')||
'IS'||unistr('\000a')||
''||unistr('\000a')||
'   l_result             APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;'||unistr('\000a')||
'   l_dialog_title       VARCHAR2(4000) := p_dynamic_action.attribute_01;'||unistr('\000a')||
'   l_url_location       VARCHAR2(50) := NVL(p_dynamic_action.at'||
'tribute_02, ''STATIC'');'||unistr('\000a')||
'   l_static_url         VARCHAR2(4000) := p_dynamic_action.attribute_03;'||unistr('\000a')||
'   l_attr_name          VARCHAR2(4000) := NVL(p_dynamic_action.attribute_05, ''data-url'');'||unistr('\000a')||
'   l_close_sel          VARCHAR2(4000) := NVL(p_dynamic_action.attribute_06, ''div#success-message'');'||unistr('\000a')||
'   l_hw_mode            VARCHAR2(4000) := NVL(p_dynamic_action.attribute_07, ''AUTO'');'||unistr('\000a')||
'   l_height             VAR'||
'CHAR2(4000) := p_dynamic_action.attribute_08;'||unistr('\000a')||
'   l_width              VARCHAR2(4000) := p_dynamic_action.attribute_09;'||unistr('\000a')||
'   l_modal_page_id      VARCHAR2(4000) := p_dynamic_action.attribute_10;'||unistr('\000a')||
'   l_theme              NUMBER := NVL(p_plugin.attribute_01, 3);'||unistr('\000a')||
'   l_overlay_opacity    NUMBER := NVL(TO_NUMBER(p_plugin.attribute_02, ''999.99'', ''NLS_NUMERIC_CHARACTERS = ''''.,''''''), .5);'||unistr('\000a')||
'   l_scrolling       '||
'   VARCHAR2(1) := NVL(p_plugin.attribute_03, ''N'');'||unistr('\000a')||
'   l_transition         VARCHAR2(50) := NVL(p_plugin.attribute_04, ''none'');'||unistr('\000a')||
'   l_initial_height     NUMBER := NVL(p_plugin.attribute_05, 100);'||unistr('\000a')||
'   l_initial_width      NUMBER := NVL(p_plugin.attribute_06, 100);'||unistr('\000a')||
'   l_draggable          VARCHAR2(1) := NVL(p_plugin.attribute_07, ''Y'');'||unistr('\000a')||
'   l_custom_css_path    VARCHAR2(4000) := p_plugin.attribute_08;'||unistr('\000a')||
'  '||
' l_custom_css_file    VARCHAR2(4000) := p_plugin.attribute_09;'||unistr('\000a')||
'   l_loading_image_src  VARCHAR2(32767);'||unistr('\000a')||
'   l_onload_code        VARCHAR2(32767);'||unistr('\000a')||
'   l_crlf               CHAR(2) := CHR(13)||CHR(10);'||unistr('\000a')||
''||unistr('\000a')||
'BEGIN'||unistr('\000a')||
''||unistr('\000a')||
'   IF apex_application.g_debug'||unistr('\000a')||
'   THEN'||unistr('\000a')||
'      apex_plugin_util.debug_dynamic_action('||unistr('\000a')||
'         p_plugin         => p_plugin,'||unistr('\000a')||
'         p_dynamic_action => p_dynamic_action '||unistr('\000a')||
'      );'||unistr('\000a')||
'   END IF;'||unistr('\000a')||
'   '||unistr('\000a')||
''||
'   IF l_theme = 6 --User selected custom theme'||unistr('\000a')||
'   THEN'||unistr('\000a')||
'      apex_css.add_file('||unistr('\000a')||
'         p_name      => RTRIM(RTRIM(l_custom_css_file,''.css''),''.CSS''),'||unistr('\000a')||
'         p_directory => wwv_flow.do_substitutions(l_custom_css_path),'||unistr('\000a')||
'         p_version   => NULL'||unistr('\000a')||
'      );'||unistr('\000a')||
'   ELSE '||unistr('\000a')||
'      apex_css.add_file('||unistr('\000a')||
'         p_name      => ''t'' || l_theme || ''colorbox'','||unistr('\000a')||
'         p_directory => p_plugin.file_prefix,'||unistr('\000a')||
'       '||
'  p_version   => NULL'||unistr('\000a')||
'      );'||unistr('\000a')||
'   END IF;'||unistr('\000a')||
''||unistr('\000a')||
'   apex_javascript.add_library('||unistr('\000a')||
'      p_name      => ''jquery.colorbox-min'','||unistr('\000a')||
'      p_directory => p_plugin.file_prefix,'||unistr('\000a')||
'      p_version   => NULL'||unistr('\000a')||
'   );'||unistr('\000a')||
'   '||unistr('\000a')||
'   apex_javascript.add_library('||unistr('\000a')||
'      p_name      => ''apex_modal_page.min'','||unistr('\000a')||
'      p_directory => p_plugin.file_prefix,'||unistr('\000a')||
'      p_version   => NULL '||unistr('\000a')||
'   );'||unistr('\000a')||
''||unistr('\000a')||
'   l_onload_code := ''apex.jQuery(document).apex_m'||
'odal_page({'' || l_crlf'||unistr('\000a')||
'      || ''   '' || apex_javascript.add_attribute(''transition'',  l_transition) || l_crlf'||unistr('\000a')||
'      || ''   '' || apex_javascript.add_attribute(''draggable'',  '||unistr('\000a')||
'         CASE l_draggable'||unistr('\000a')||
'            WHEN ''Y'' THEN TRUE'||unistr('\000a')||
'            ELSE FALSE'||unistr('\000a')||
'         END'||unistr('\000a')||
'      ) || l_crlf'||unistr('\000a')||
'      || ''   '' || apex_javascript.add_attribute(''initialHeight'',  l_initial_height) || l_crlf'||unistr('\000a')||
'      || ''   '' || apex'||
'_javascript.add_attribute(''initialWidth'',  l_initial_width) || l_crlf'||unistr('\000a')||
'      || ''   '' || apex_javascript.add_attribute(''overlayOpacity'',  l_overlay_opacity) || l_crlf'||unistr('\000a')||
'      || ''   '' || apex_javascript.add_attribute(''scrolling'',  '||unistr('\000a')||
'         CASE l_scrolling'||unistr('\000a')||
'            WHEN ''Y'' THEN TRUE'||unistr('\000a')||
'            ELSE FALSE'||unistr('\000a')||
'         END'||unistr('\000a')||
'      ) || l_crlf'||unistr('\000a')||
'      || ''   '' || apex_javascript.add_attribute(''loadingImag'||
'eSrc'', l_loading_image_src, FALSE, FALSE) || l_crlf'||unistr('\000a')||
'      || ''});'';'||unistr('\000a')||
'      '||unistr('\000a')||
'   apex_javascript.add_onload_code('||unistr('\000a')||
'      p_code => l_onload_code'||unistr('\000a')||
'   ); '||unistr('\000a')||
''||unistr('\000a')||
'   l_result.javascript_function := '||unistr('\000a')||
'      ''function(){'' || l_crlf ||'||unistr('\000a')||
'      ''   if (this.browserEvent !== ''''load''''){'' || l_crlf ||'||unistr('\000a')||
'      ''      apex.jQuery(document).apex_modal_page(''''openPageFromApexThis'''', this);'' || l_crlf ||'||unistr('\000a')||
'      ''   }'' || l_crlf '||
'||'||unistr('\000a')||
'      ''}'';'||unistr('\000a')||
''||unistr('\000a')||
'   l_result.attribute_01 := l_dialog_title;'||unistr('\000a')||
'   l_result.attribute_02 := l_url_location;'||unistr('\000a')||
'   l_result.attribute_03 := l_static_url;'||unistr('\000a')||
'   l_result.attribute_05 := l_attr_name;'||unistr('\000a')||
'   l_result.attribute_06 := l_close_sel;'||unistr('\000a')||
'   l_result.attribute_07 := l_hw_mode;'||unistr('\000a')||
'   l_result.attribute_08 := l_height;'||unistr('\000a')||
'   l_result.attribute_09 := l_width;'||unistr('\000a')||
'   l_result.attribute_10 := l_modal_page_id;'||unistr('\000a')||
''||unistr('\000a')||
'   RETURN l_r'||
'esult;'||unistr('\000a')||
'    '||unistr('\000a')||
'END apex_modal_page_render;'
 ,p_render_function => 'apex_modal_page_render'
 ,p_substitute_attributes => true
 ,p_subscribe_plugin_settings => true
 ,p_help_text => '<br />'||unistr('\000a')||
''
 ,p_version_identifier => '2.0.0'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Theme'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => '3'
 ,p_is_translatable => false
 ,p_help_text => 'The Theme setting is used to change the look and feel of the modal window. The ColorBox website includes 5 example themes which have been included with this plug-in. Simply select a number from 1 to 5 to use one of these themes. The themes demonstrate the flexibility of the plug-in and can be used without making any changes. However, a custom option exists that, when selected, exposes two additional fields that allow for a custom CSS file to be defined. It is recommended that you start with an existing theme and make small changes to it until you are comfortable working with the CSS.'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11512384868445622 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => '1'
 ,p_return_value => '1'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11512786600446085 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => '2'
 ,p_return_value => '2'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11513188677446667 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 30
 ,p_display_value => '3'
 ,p_return_value => '3'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11513590409447172 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 40
 ,p_display_value => '4'
 ,p_return_value => '4'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11513992833447841 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 50
 ,p_display_value => '5'
 ,p_return_value => '5'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11514362143448469 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 60
 ,p_display_value => 'Custom'
 ,p_return_value => '6'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11515161151476231 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'Overlay Opacity'
 ,p_attribute_type => 'NUMBER'
 ,p_is_required => true
 ,p_default_value => '.5'
 ,p_display_length => 3
 ,p_max_length => 3
 ,p_is_translatable => false
 ,p_help_text => 'The Overlay Opacity setting is used to adjust the darkness of the overlay behind the modal dialog. Specify a number between 0 and 1 where 0 is transparent and 1 is completely obscured. The default value of .5 is in the middle and allows the users to see the screen behind but focuses their attention on the modal dialog.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11515664530496090 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 17
 ,p_prompt => 'Scrolling'
 ,p_attribute_type => 'CHECKBOX'
 ,p_is_required => false
 ,p_default_value => 'Y'
 ,p_is_translatable => false
 ,p_help_text => 'The Scrolling setting is used to specify whether or not the modal can include scroll bars across the top and bottom of the modal to allow users to see all of the content in the page. When set to No, any overflow cotent will be hidden from view.<br /> '||unistr('\000a')||
'<br />'||unistr('\000a')||
'This setting must be used in conjunction with the Height and Width settings in the component settings. A later version of this plug-in will move this setting to the component settings.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11516186347502298 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 4
 ,p_display_sequence => 15
 ,p_prompt => 'Transition'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'none'
 ,p_is_translatable => false
 ,p_help_text => 'The Transition setting can be used to apply some effects to the opening and closing of the modal dialog. '
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11516689810503310 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11516186347502298 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'None'
 ,p_return_value => 'none'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11517063060514421 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11516186347502298 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'Elastic'
 ,p_return_value => 'elastic'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 11517467908515852 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 11516186347502298 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 30
 ,p_display_value => 'Fade'
 ,p_return_value => 'fade'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 10307332362955396749 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 5
 ,p_display_sequence => 50
 ,p_prompt => 'Initial Height'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '100'
 ,p_display_length => 2
 ,p_max_length => 3
 ,p_is_translatable => false
 ,p_help_text => 'The Initial Height setting is used to specify the initial height (in pixels) of the modal page when it opens but before the main content loads. '
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 10307333545424401174 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 6
 ,p_display_sequence => 60
 ,p_prompt => 'Initial Width'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '300'
 ,p_display_length => 2
 ,p_max_length => 3
 ,p_is_translatable => false
 ,p_help_text => 'The Initial Width setting is used to specify the initial width (in pixels) of the modal page when it opens but before the main content loads.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11519088471531173 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 7
 ,p_display_sequence => 18
 ,p_prompt => 'Draggable'
 ,p_attribute_type => 'CHECKBOX'
 ,p_is_required => false
 ,p_default_value => 'Y'
 ,p_is_translatable => false
 ,p_help_text => 'The Draggable setting is used to specify whether or not the user should be able to move the modal dialog around on the screen.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11519973496545643 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 8
 ,p_display_sequence => 12
 ,p_prompt => 'Custom CSS Path'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_display_length => 50
 ,p_max_length => 500
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => '6'
 ,p_help_text => 'The Custom CSS Path setting is used to specify the path to a custom CSS file for the theme. This setting is only displayed when the Theme is set to custom. See Optional Performance Upgrade for additional information.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 11520482285557622 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 9
 ,p_display_sequence => 13
 ,p_prompt => 'Custom CSS Filename'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_display_length => 50
 ,p_max_length => 500
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 11511882790444989 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => '6'
 ,p_help_text => 'The Custom CSS Filename setting is used to specify the name of the file that contains custom CSS for the theme. Only the name of the file should be included with this setting as it is assumed the extension will be â.cssâ. This setting is only displayed when the Theme is set to custom.  See Optional Performance Upgrade for additional information.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 27704383355813167736 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Dialog Title'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_display_length => 30
 ,p_max_length => 50
 ,p_is_translatable => false
 ,p_help_text => 'Use this attribute to specify the title displayed in the modal page.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 27704376166633151926 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'URL Location'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'STATIC'
 ,p_is_translatable => false
 ,p_help_text => 'Use this attribute to specify whether the URL for the modal page is static or dynamic. '
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 27704378448756156166 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 27704376166633151926 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Statically Defined'
 ,p_return_value => 'STATIC'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 27704379561223159787 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 27704376166633151926 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'Attribute of Triggering Element'
 ,p_return_value => 'TRIG_ELEMENT_ATTR'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 27704370446201145993 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 30
 ,p_prompt => 'Static URL'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => 'f?p=&APP_ID.:1:&APP_SESSION.:::1:::'
 ,p_display_length => 50
 ,p_max_length => 500
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 27704376166633151926 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => 'STATIC'
 ,p_help_text => 'Use this attribute to specify a static URL for the modal page.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 35769078982339646271 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 5
 ,p_display_sequence => 50
 ,p_prompt => 'Attribute Name'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => 'href'
 ,p_display_length => 30
 ,p_max_length => 50
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 27704376166633151926 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => 'TRIG_ELEMENT_ATTR'
 ,p_help_text => 'Use this attribute to specify which attribute of the triggering element contains the URL for the modal page. This is often the href attribute of anchor elements.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 35769208980804835041 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 6
 ,p_display_sequence => 60
 ,p_prompt => 'Auto-close On Element Selector'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_default_value => 'div#success-message'
 ,p_display_length => 30
 ,p_max_length => 500
 ,p_is_translatable => false
 ,p_help_text => 'Use this attribute to specify a jQuery selector used to close the modal page automatically. The selector is executed when the modal page is loaded. If the selector selects anything, the modal page will close and the Auto Close event will be triggered. Typically this is only used for modal pages that are submitted for processing where the success message is used to auto-close the modal page.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 13100949465101826699 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 7
 ,p_display_sequence => 70
 ,p_prompt => 'Dialog Height/Width Mode'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'AUTO'
 ,p_is_translatable => false
 ,p_help_text => 'Use this attribute to control the size of the modal page. The default value of "Auto" will try to automatically determine the appropriate size of the page based on the content. However, if you need more control, this attribute allows you set the height and width as a percentage of the total window size or by a fixed number of pixels.'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 13100988054150832991 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 13100949465101826699 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 1
 ,p_display_value => 'Auto'
 ,p_return_value => 'AUTO'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 13100951269949828088 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 13100949465101826699 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Static by percent of window'
 ,p_return_value => 'STATIC_%'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 13100951839605828748 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 13100949465101826699 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'Static by pixels'
 ,p_return_value => 'STATIC_PX'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 13101171341692905030 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 8
 ,p_display_sequence => 80
 ,p_prompt => 'Height'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_display_length => 2
 ,p_max_length => 3
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 13100949465101826699 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'IN_LIST'
 ,p_depending_on_expression => 'STATIC_%,STATIC_PX'
 ,p_help_text => 'Use this attribute to set the height of the modal page. This value can be used to specify a percentage of the total screen or specific number of pixels which is determined by the Dialog Height/Width Mode attribute.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 13101173654852908842 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 9
 ,p_display_sequence => 90
 ,p_prompt => 'Width'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_display_length => 2
 ,p_max_length => 3
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 13100949465101826699 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'IN_LIST'
 ,p_depending_on_expression => 'STATIC_%,STATIC_PX'
 ,p_help_text => 'Use this attribute to set the width of the modal page. This value can be used to specify a percentage of the total screen or specific number of pixels which is determined by the Dialog Height/Width Mode attribute.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 13101215346026944116 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 10
 ,p_display_sequence => 100
 ,p_prompt => 'Modal Page ID'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_display_length => 30
 ,p_max_length => 50
 ,p_is_translatable => false
 ,p_help_text => 'Use this attribute to associate an identifier, such as "create-customer-page", with the modal page that has been opened. When the modal page closes this identifier will be passed back with the event object so that the closing of one modal page can be differentiated from another. The value can be accessed from the data object of "this" in a Dynamic Action with: this.data.modalPageId'
  );
wwv_flow_api.create_plugin_event (
  p_id => 35706617866777183209 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_name => 'modalpageautoclose'
 ,p_display_name => 'Auto Close'
  );
wwv_flow_api.create_plugin_event (
  p_id => 10306900951828015143 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_name => 'modalpageclose'
 ,p_display_name => 'Close'
  );
wwv_flow_api.create_plugin_event (
  p_id => 11551461319093204 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_name => 'modalpageendopen'
 ,p_display_name => 'End Open'
  );
wwv_flow_api.create_plugin_event (
  p_id => 11551866514094735 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_name => 'modalpagemanualclose'
 ,p_display_name => 'Manual Close'
  );
wwv_flow_api.create_plugin_event (
  p_id => 11552172054096335 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_name => 'modalpagestartopen'
 ,p_display_name => 'Start Open'
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A75726C2823504C5547494E5F5052454649582374316F7665726C61792E706E672920726570656174203020303B7D0D0A23636F6C6F72626F787B7D0D0A2020';
wwv_flow_api.g_varchar2_table(11) := '20202363626F78546F704C6566747B77696474683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237431636F6E74726F6C732E706E6729206E6F2D726570656174202D313031';
wwv_flow_api.g_varchar2_table(12) := '707820303B7D0D0A202020202363626F78546F7052696768747B77696474683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237431636F6E74726F6C732E706E6729206E6F2D';
wwv_flow_api.g_varchar2_table(13) := '726570656174202D313330707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237431636F6E74';
wwv_flow_api.g_varchar2_table(14) := '726F6C732E706E6729206E6F2D726570656174202D3130317078202D323970783B7D0D0A202020202363626F78426F74746F6D52696768747B77696474683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C2823504C';
wwv_flow_api.g_varchar2_table(15) := '5547494E5F505245464958237431636F6E74726F6C732E706E6729206E6F2D726570656174202D3133307078202D323970783B7D0D0A202020202363626F784D6964646C654C6566747B77696474683A323170783B206261636B67726F756E643A75726C';
wwv_flow_api.g_varchar2_table(16) := '2823504C5547494E5F505245464958237431636F6E74726F6C732E706E6729206C65667420746F70207265706561742D793B7D0D0A202020202363626F784D6964646C6552696768747B77696474683A323170783B206261636B67726F756E643A75726C';
wwv_flow_api.g_varchar2_table(17) := '2823504C5547494E5F505245464958237431636F6E74726F6C732E706E672920726967687420746F70207265706561742D793B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A323170783B206261636B67726F756E643A75726C';
wwv_flow_api.g_varchar2_table(18) := '2823504C5547494E5F505245464958237431626F726465722E706E672920302030207265706561742D783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A323170783B206261636B67726F756E643A75726C2823504C55';
wwv_flow_api.g_varchar2_table(19) := '47494E5F505245464958237431626F726465722E706E67292030202D32397078207265706561742D783B7D0D0A202020202363626F78436F6E74656E747B6261636B67726F756E643A236666663B206F766572666C6F773A68696464656E3B7D0D0A2020';
wwv_flow_api.g_varchar2_table(20) := '2020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A2020202020';
wwv_flow_api.g_varchar2_table(21) := '2020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A323870783B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B206C6566743A30';
wwv_flow_api.g_varchar2_table(22) := '3B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20636F6C6F723A233934393439343B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A347078';
wwv_flow_api.g_varchar2_table(23) := '3B206C6566743A353870783B20636F6C6F723A233934393439343B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B2072696768743A333070783B20636F6C6F';
wwv_flow_api.g_varchar2_table(24) := '723A233030393265663B7D0D0A20202020202020202363626F7850726576696F75737B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B206C6566743A303B206261636B67726F756E643A75726C2823504C5547494E5F5052454649';
wwv_flow_api.g_varchar2_table(25) := '58237431636F6E74726F6C732E706E6729206E6F2D726570656174202D3735707820303B2077696474683A323570783B206865696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F785072';
wwv_flow_api.g_varchar2_table(26) := '6576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B206C6566743A';
wwv_flow_api.g_varchar2_table(27) := '323770783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237431636F6E74726F6C732E706E6729206E6F2D726570656174202D3530707820303B2077696474683A323570783B206865696768743A323570783B2074657874';
wwv_flow_api.g_varchar2_table(28) := '2D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D35307078202D323570783B7D0D0A20202020202020202363626F784C6F6164696E674F76';
wwv_flow_api.g_varchar2_table(29) := '65726C61797B6261636B67726F756E643A75726C2823504C5547494E5F5052454649582374316C6F6164696E675F6261636B67726F756E642E706E6729206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A2020202020202020236362';
wwv_flow_api.g_varchar2_table(30) := '6F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2823504C5547494E5F5052454649582374316C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A2020202020202020236362';
wwv_flow_api.g_varchar2_table(31) := '6F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B2072696768743A303B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237431636F6E74726F6C732E706E6729206E6F2D7265706561';
wwv_flow_api.g_varchar2_table(32) := '74202D3235707820303B2077696474683A323570783B206865696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974';
wwv_flow_api.g_varchar2_table(33) := '696F6E3A2D32357078202D323570783B7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E6720666978657320612070726F626C656D2077686572652049453720616E6420494538207265706C616365206120504E47277320616C70686120747261';
wwv_flow_api.g_varchar2_table(34) := '6E73706172656E63792077697468206120626C61636B2066696C6C0D0A20207768656E20616E20616C7068612066696C74657220286F706163697479206368616E67652920697320736574206F6E2074686520656C656D656E74206F7220616E63657374';
wwv_flow_api.g_varchar2_table(35) := '6F7220656C656D656E742E202054686973207374796C65206973206E6F74206170706C69656420746F206F72206E656564656420696E204945392E0D0A20205365653A20687474703A2F2F6A61636B6C6D6F6F72652E636F6D2F6E6F7465732F69652D74';
wwv_flow_api.g_varchar2_table(36) := '72616E73706172656E63792D70726F626C656D732F0D0A2A2F0D0A2E63626F784945202363626F78546F704C6566742C0D0A2E63626F784945202363626F78546F7043656E7465722C0D0A2E63626F784945202363626F78546F7052696768742C0D0A2E';
wwv_flow_api.g_varchar2_table(37) := '63626F784945202363626F78426F74746F6D4C6566742C0D0A2E63626F784945202363626F78426F74746F6D43656E7465722C0D0A2E63626F784945202363626F78426F74746F6D52696768742C0D0A2E63626F784945202363626F784D6964646C654C';
wwv_flow_api.g_varchar2_table(38) := '6566742C0D0A2E63626F784945202363626F784D6964646C655269676874207B0D0A2020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E74287374617274436F6C6F7273';
wwv_flow_api.g_varchar2_table(39) := '74723D2330304646464646462C656E64436F6C6F727374723D233030464646464646293B0D0A7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E672070726F766964657320504E47207472616E73706172656E637920737570706F727420666F72';
wwv_flow_api.g_varchar2_table(40) := '204945360D0A20204665656C206672656520746F2072656D6F7665207468697320616E6420746865202F6965362F206469726563746F727920696620796F7520686176652064726F707065642049453620737570706F72742E0D0A2A2F0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(41) := '494536202363626F78546F704C6566747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237431626F72646572546F704C6566742E706E67293B7D0D0A2E63626F78494536202363626F78546F7043656E7465727B6261636B67';
wwv_flow_api.g_varchar2_table(42) := '726F756E643A75726C2823504C5547494E5F505245464958237431626F72646572546F7043656E7465722E706E67293B7D0D0A2E63626F78494536202363626F78546F7052696768747B6261636B67726F756E643A75726C2823504C5547494E5F505245';
wwv_flow_api.g_varchar2_table(43) := '464958237431626F72646572546F7052696768742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D4C6566747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237431626F72646572426F74746F6D4C65';
wwv_flow_api.g_varchar2_table(44) := '66742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D43656E7465727B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237431626F72646572426F74746F6D43656E7465722E706E67293B7D0D0A2E6362';
wwv_flow_api.g_varchar2_table(45) := '6F78494536202363626F78426F74746F6D52696768747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237431626F72646572426F74746F6D52696768742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C';
wwv_flow_api.g_varchar2_table(46) := '654C6566747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237431626F726465724D6964646C654C6566742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C6552696768747B6261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(47) := '75726C2823504C5547494E5F505245464958237431626F726465724D6964646C6552696768742E706E67293B7D0D0A0D0A2E63626F78494536202363626F78546F704C6566742C0D0A2E63626F78494536202363626F78546F7043656E7465722C0D0A2E';
wwv_flow_api.g_varchar2_table(48) := '63626F78494536202363626F78546F7052696768742C0D0A2E63626F78494536202363626F78426F74746F6D4C6566742C0D0A2E63626F78494536202363626F78426F74746F6D43656E7465722C0D0A2E63626F78494536202363626F78426F74746F6D';
wwv_flow_api.g_varchar2_table(49) := '52696768742C0D0A2E63626F78494536202363626F784D6964646C654C6566742C0D0A2E63626F78494536202363626F784D6964646C655269676874207B0D0A202020205F6265686176696F723A2065787072657373696F6E28746869732E737263203D';
wwv_flow_api.g_varchar2_table(50) := '20746869732E737263203F20746869732E737263203A20746869732E63757272656E745374796C652E6261636B67726F756E64496D6167652E73706C697428272227295B315D2C20746869732E7374796C652E6261636B67726F756E64203D20226E6F6E';
wwv_flow_api.g_varchar2_table(51) := '65222C20746869732E7374796C652E66696C746572203D202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861496D6167654C6F61646572287372633D22202B20746869732E737263202B20222C207369';
wwv_flow_api.g_varchar2_table(52) := '7A696E674D6574686F643D277363616C65272922293B0D0A7D0D0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11524084593013172 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1colorbox.css'
 ,p_mime_type => 'text/css'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A236666663B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78436F6E74656E747B6D617267696E2D746F703A333270783B206F766572666C6F77';
wwv_flow_api.g_varchar2_table(11) := '3A76697369626C653B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C6964';
wwv_flow_api.g_varchar2_table(12) := '20236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6261636B67726F756E643A233030303B2070616464696E673A3170783B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B';
wwv_flow_api.g_varchar2_table(13) := '67726F756E643A75726C2823504C5547494E5F5052454649582374326C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B';
wwv_flow_api.g_varchar2_table(14) := '67726F756E643A233030303B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20746F703A2D323270783B206C6566743A303B20636F6C6F723A233030303B7D0D0A20202020202020202363626F7843';
wwv_flow_api.g_varchar2_table(15) := '757272656E747B706F736974696F6E3A6162736F6C7574653B20746F703A2D323270783B2072696768743A32303570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78536C69646573686F772C20236362';
wwv_flow_api.g_varchar2_table(16) := '6F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73657B746578742D696E64656E743A2D3939393970783B2077696474683A323070783B206865696768743A323070783B20706F736974696F6E3A6162736F6C7574653B2074';
wwv_flow_api.g_varchar2_table(17) := '6F703A2D323070783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237432636F6E74726F6C732E706E6729206E6F2D726570656174203020303B7D0D0A20202020202020202363626F7850726576696F75737B6261636B67';
wwv_flow_api.g_varchar2_table(18) := '726F756E642D706F736974696F6E3A307078203070783B2072696768743A343470783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A307078202D323570783B7D0D0A20';
wwv_flow_api.g_varchar2_table(19) := '202020202020202363626F784E6578747B6261636B67726F756E642D706F736974696F6E3A2D32357078203070783B2072696768743A323270783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F73';
wwv_flow_api.g_varchar2_table(20) := '6974696F6E3A2D32357078202D323570783B7D0D0A20202020202020202363626F78436C6F73657B6261636B67726F756E642D706F736974696F6E3A2D35307078203070783B2072696768743A303B7D0D0A20202020202020202363626F78436C6F7365';
wwv_flow_api.g_varchar2_table(21) := '3A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D35307078202D323570783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F7850726576696F75732C202E63626F78536C69646573686F775F6F66';
wwv_flow_api.g_varchar2_table(22) := '66202363626F7850726576696F75737B72696768743A363670783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D37357078202D3235';
wwv_flow_api.g_varchar2_table(23) := '70783B2072696768743A343470783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3130307078202D323570783B7D0D';
wwv_flow_api.g_varchar2_table(24) := '0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D3130307078203070783B2072696768743A343470783B7D0D0A20202020202020202E6362';
wwv_flow_api.g_varchar2_table(25) := '6F78536C69646573686F775F6F6666202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11524782652014045 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't2colorbox.css'
 ,p_mime_type => 'text/css'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A233030303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78436F6E74656E747B6D617267696E2D746F703A323070783B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(11) := '20202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A202020202020202023';
wwv_flow_api.g_varchar2_table(12) := '63626F784C6F61646564436F6E74656E747B626F726465723A35707820736F6C696420233030303B206261636B67726F756E643A236666663B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20746F';
wwv_flow_api.g_varchar2_table(13) := '703A2D323070783B206C6566743A303B20636F6C6F723A236363633B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B2072696768743A3070783B20636F6C6F723A23';
wwv_flow_api.g_varchar2_table(14) := '6363633B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B2072696768743A393070783B20636F6C6F723A236666663B7D0D0A20202020202020202363626F7850';
wwv_flow_api.g_varchar2_table(15) := '726576696F75737B706F736974696F6E3A6162736F6C7574653B20746F703A3530253B206C6566743A3570783B206D617267696E2D746F703A2D333270783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237433636F6E74';
wwv_flow_api.g_varchar2_table(16) := '726F6C732E706E6729206E6F2D72657065617420746F70206C6566743B2077696474683A323870783B206865696768743A363570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F7850726576696F75733A';
wwv_flow_api.g_varchar2_table(17) := '686F7665727B6261636B67726F756E642D706F736974696F6E3A626F74746F6D206C6566743B7D0D0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20746F703A3530253B2072696768743A3570783B206D61';
wwv_flow_api.g_varchar2_table(18) := '7267696E2D746F703A2D333270783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237433636F6E74726F6C732E706E6729206E6F2D72657065617420746F702072696768743B2077696474683A323870783B206865696768';
wwv_flow_api.g_varchar2_table(19) := '743A363570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A626F74746F6D2072696768743B7D0D0A202020202020202023';
wwv_flow_api.g_varchar2_table(20) := '63626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A233030303B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2823504C5547494E5F5052454649582374336C6F';
wwv_flow_api.g_varchar2_table(21) := '6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20746F703A3570783B2072696768743A3570783B2064697370';
wwv_flow_api.g_varchar2_table(22) := '6C61793A626C6F636B3B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237433636F6E74726F6C732E706E6729206E6F2D72657065617420746F702063656E7465723B2077696474683A333870783B206865696768743A3139';
wwv_flow_api.g_varchar2_table(23) := '70783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A626F74746F6D2063656E7465723B7D';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11525480927014812 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't3colorbox.css'
 ,p_mime_type => 'text/css'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A236666663B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B77696474683A323570783B206865696768743A323570783B20';
wwv_flow_api.g_varchar2_table(11) := '6261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572312E706E6729206E6F2D726570656174203020303B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A323570783B206261636B6772';
wwv_flow_api.g_varchar2_table(12) := '6F756E643A75726C2823504C5547494E5F505245464958237434626F72646572312E706E6729207265706561742D782030202D353070783B7D0D0A202020202363626F78546F7052696768747B77696474683A323570783B206865696768743A32357078';
wwv_flow_api.g_varchar2_table(13) := '3B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572312E706E6729206E6F2D726570656174202D3235707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A323570783B20';
wwv_flow_api.g_varchar2_table(14) := '6865696768743A323570783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572312E706E6729206E6F2D7265706561742030202D323570783B7D0D0A202020202363626F78426F74746F6D43656E746572';
wwv_flow_api.g_varchar2_table(15) := '7B6865696768743A323570783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572312E706E6729207265706561742D782030202D373570783B7D0D0A202020202363626F78426F74746F6D52696768747B';
wwv_flow_api.g_varchar2_table(16) := '77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572312E706E6729206E6F2D726570656174202D32357078202D323570783B7D0D0A2020202023';
wwv_flow_api.g_varchar2_table(17) := '63626F784D6964646C654C6566747B77696474683A323570783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572322E706E6729207265706561742D79203020303B7D0D0A202020202363626F784D6964';
wwv_flow_api.g_varchar2_table(18) := '646C6552696768747B77696474683A323570783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572322E706E6729207265706561742D79202D3235707820303B7D0D0A202020202363626F78436F6E7465';
wwv_flow_api.g_varchar2_table(19) := '6E747B6261636B67726F756E643A236666663B206F766572666C6F773A68696464656E3B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B706164';
wwv_flow_api.g_varchar2_table(20) := '64696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A323070783B7D0D0A20202020202020202363626F785469';
wwv_flow_api.g_varchar2_table(21) := '746C657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20636F6C6F723A233939393B7D0D0A20202020202020202363626F';
wwv_flow_api.g_varchar2_table(22) := '7843757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A31303070783B20636F6C6F723A233939393B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162';
wwv_flow_api.g_varchar2_table(23) := '736F6C7574653B20626F74746F6D3A3070783B2072696768743A343270783B20636F6C6F723A233434343B7D0D0A20202020202020202363626F7850726576696F75737B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C';
wwv_flow_api.g_varchar2_table(24) := '6566743A303B20636F6C6F723A233434343B7D0D0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A363370783B20636F6C6F723A233434343B7D0D0A2020202020';
wwv_flow_api.g_varchar2_table(25) := '2020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A236666662075726C2823504C5547494E5F5052454649582374346C6F6164696E672E67696629206E6F2D72657065617420357078203570783B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(26) := '20202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B2072696768743A303B20646973706C61793A626C6F636B3B20636F6C6F723A233434343B7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E';
wwv_flow_api.g_varchar2_table(27) := '6720666978657320612070726F626C656D2077686572652049453720616E6420494538207265706C616365206120504E47277320616C706861207472616E73706172656E63792077697468206120626C61636B2066696C6C0D0A20207768656E20616E20';
wwv_flow_api.g_varchar2_table(28) := '616C7068612066696C74657220286F706163697479206368616E67652920697320736574206F6E2074686520656C656D656E74206F7220616E636573746F7220656C656D656E742E202054686973207374796C65206973206E6F74206170706C69656420';
wwv_flow_api.g_varchar2_table(29) := '746F206F72206E656564656420696E204945392E0D0A20205365653A20687474703A2F2F6A61636B6C6D6F6F72652E636F6D2F6E6F7465732F69652D7472616E73706172656E63792D70726F626C656D732F0D0A2A2F0D0A2E63626F784945202363626F';
wwv_flow_api.g_varchar2_table(30) := '78546F704C6566742C0D0A2E63626F784945202363626F78546F7043656E7465722C0D0A2E63626F784945202363626F78546F7052696768742C0D0A2E63626F784945202363626F78426F74746F6D4C6566742C0D0A2E63626F784945202363626F7842';
wwv_flow_api.g_varchar2_table(31) := '6F74746F6D43656E7465722C0D0A2E63626F784945202363626F78426F74746F6D52696768742C0D0A2E63626F784945202363626F784D6964646C654C6566742C0D0A2E63626F784945202363626F784D6964646C655269676874207B0D0A2020202066';
wwv_flow_api.g_varchar2_table(32) := '696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E74287374617274436F6C6F727374723D2330304646464646462C656E64436F6C6F727374723D233030464646464646293B0D0A7D';
wwv_flow_api.g_varchar2_table(33) := '0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E672070726F766964657320504E47207472616E73706172656E637920737570706F727420666F72204945360D0A20204665656C206672656520746F2072656D6F7665207468697320616E64207468';
wwv_flow_api.g_varchar2_table(34) := '65202F6965362F206469726563746F727920696620796F7520686176652064726F707065642049453620737570706F72742E0D0A2A2F0D0A2E63626F78494536202363626F78546F704C6566747B6261636B67726F756E643A75726C2823504C5547494E';
wwv_flow_api.g_varchar2_table(35) := '5F505245464958237434626F72646572546F704C6566742E706E67293B7D0D0A2E63626F78494536202363626F78546F7043656E7465727B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572546F7043656E';
wwv_flow_api.g_varchar2_table(36) := '7465722E706E67293B7D0D0A2E63626F78494536202363626F78546F7052696768747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572546F7052696768742E706E67293B7D0D0A2E63626F784945362023';
wwv_flow_api.g_varchar2_table(37) := '63626F78426F74746F6D4C6566747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572426F74746F6D4C6566742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D43656E7465727B62';
wwv_flow_api.g_varchar2_table(38) := '61636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F72646572426F74746F6D43656E7465722E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D52696768747B6261636B67726F756E643A75726C2823';
wwv_flow_api.g_varchar2_table(39) := '504C5547494E5F505245464958237434626F72646572426F74746F6D52696768742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C654C6566747B6261636B67726F756E643A75726C2823504C5547494E5F50524546495823743462';
wwv_flow_api.g_varchar2_table(40) := '6F726465724D6964646C654C6566742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C6552696768747B6261636B67726F756E643A75726C2823504C5547494E5F505245464958237434626F726465724D6964646C6552696768742E';
wwv_flow_api.g_varchar2_table(41) := '706E67293B7D0D0A0D0A2E63626F78494536202363626F78546F704C6566742C0D0A2E63626F78494536202363626F78546F7043656E7465722C0D0A2E63626F78494536202363626F78546F7052696768742C0D0A2E63626F78494536202363626F7842';
wwv_flow_api.g_varchar2_table(42) := '6F74746F6D4C6566742C0D0A2E63626F78494536202363626F78426F74746F6D43656E7465722C0D0A2E63626F78494536202363626F78426F74746F6D52696768742C0D0A2E63626F78494536202363626F784D6964646C654C6566742C0D0A2E63626F';
wwv_flow_api.g_varchar2_table(43) := '78494536202363626F784D6964646C655269676874207B0D0A202020205F6265686176696F723A2065787072657373696F6E28746869732E737263203D20746869732E737263203F20746869732E737263203A20746869732E63757272656E745374796C';
wwv_flow_api.g_varchar2_table(44) := '652E6261636B67726F756E64496D6167652E73706C697428272227295B315D2C20746869732E7374796C652E6261636B67726F756E64203D20226E6F6E65222C20746869732E7374796C652E66696C746572203D202270726F6769643A4458496D616765';
wwv_flow_api.g_varchar2_table(45) := '5472616E73666F726D2E4D6963726F736F66742E416C706861496D6167654C6F61646572287372633D22202B20746869732E737263202B20222C2073697A696E674D6574686F643D277363616C65272922293B0D0A7D0D0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11526179202015578 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4colorbox.css'
 ,p_mime_type => 'text/css'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A233030303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B77696474683A313470783B206865696768743A313470783B20';
wwv_flow_api.g_varchar2_table(11) := '6261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729206E6F2D726570656174203020303B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A313470783B206261636B67';
wwv_flow_api.g_varchar2_table(12) := '726F756E643A75726C2823504C5547494E5F505245464958237435626F726465722E706E6729207265706561742D7820746F70206C6566743B7D0D0A202020202363626F78546F7052696768747B77696474683A313470783B206865696768743A313470';
wwv_flow_api.g_varchar2_table(13) := '783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729206E6F2D726570656174202D3336707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A31347078';
wwv_flow_api.g_varchar2_table(14) := '3B206865696768743A343370783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729206E6F2D7265706561742030202D333270783B7D0D0A202020202363626F78426F74746F6D43656E';
wwv_flow_api.g_varchar2_table(15) := '7465727B6865696768743A343370783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435626F726465722E706E6729207265706561742D7820626F74746F6D206C6566743B7D0D0A202020202363626F78426F74746F6D';
wwv_flow_api.g_varchar2_table(16) := '52696768747B77696474683A313470783B206865696768743A343370783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729206E6F2D726570656174202D33367078202D333270783B7D';
wwv_flow_api.g_varchar2_table(17) := '0D0A202020202363626F784D6964646C654C6566747B77696474683A313470783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729207265706561742D79202D313735707820303B7D0D';
wwv_flow_api.g_varchar2_table(18) := '0A202020202363626F784D6964646C6552696768747B77696474683A313470783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729207265706561742D79202D323131707820303B7D0D';
wwv_flow_api.g_varchar2_table(19) := '0A202020202363626F78436F6E74656E747B6261636B67726F756E643A236666663B206F766572666C6F773A76697369626C653B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(20) := '20202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A3570783B7D0D0A';
wwv_flow_api.g_varchar2_table(21) := '20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A75726C2823504C5547494E5F5052454649582374356C6F6164696E675F6261636B67726F756E642E706E6729206E6F2D7265706561742063656E746572';
wwv_flow_api.g_varchar2_table(22) := '2063656E7465723B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2823504C5547494E5F5052454649582374356C6F6164696E672E67696629206E6F2D7265706561742063656E746572';
wwv_flow_api.g_varchar2_table(23) := '2063656E7465723B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323570783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A31303025';
wwv_flow_api.g_varchar2_table(24) := '3B20666F6E742D7765696768743A626F6C643B20636F6C6F723A233743374337433B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323570783B206C6566743A35387078';
wwv_flow_api.g_varchar2_table(25) := '3B20666F6E742D7765696768743A626F6C643B20636F6C6F723A233743374337433B7D0D0A20202020202020200D0A20202020202020202363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C';
wwv_flow_api.g_varchar2_table(26) := '69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323970783B206261636B67726F756E643A75726C2823504C5547494E5F505245464958237435636F6E74726F6C732E706E6729206E6F2D72657065617420307078';
wwv_flow_api.g_varchar2_table(27) := '203070783B2077696474683A323370783B206865696768743A323370783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F7850726576696F75737B6C6566743A3070783B206261636B67726F756E642D706F73';
wwv_flow_api.g_varchar2_table(28) := '6974696F6E3A202D35317078202D323570783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D35317078203070783B7D0D0A20202020202020202363626F784E657874';
wwv_flow_api.g_varchar2_table(29) := '7B6C6566743A323770783B206261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3735707820307078';
wwv_flow_api.g_varchar2_table(30) := '3B7D0D0A20202020202020202363626F78436C6F73657B72696768743A303B206261636B67726F756E642D706F736974696F6E3A2D3130307078202D323570783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F';
wwv_flow_api.g_varchar2_table(31) := '756E642D706F736974696F6E3A2D3130307078203070783B7D0D0A20202020202020200D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D31';
wwv_flow_api.g_varchar2_table(32) := '32357078203070783B2072696768743A323770783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3135307078203070';
wwv_flow_api.g_varchar2_table(33) := '783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D3135307078202D323570783B2072696768743A323770783B7D0D0A2020202020';
wwv_flow_api.g_varchar2_table(34) := '2020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3132357078203070783B7D';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11526877692016325 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't5colorbox.css'
 ,p_mime_type => 'text/css'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2861297B612E776964676574282275692E617065785F6D6F64616C5F70616765222C7B6F7074696F6E733A7B7472616E736974696F6E3A6E756C6C2C6C6F6164696E67496D6167655372633A6E756C6C2C696E697469616C486569';
wwv_flow_api.g_varchar2_table(2) := '6768743A6E756C6C2C696E697469616C57696474683A6E756C6C2C6F7665726C61794F7061636974793A6E756C6C2C7363726F6C6C696E673A6E756C6C2C647261676761626C653A6E756C6C7D2C5F6372656174655072697661746553746F726167653A';
wwv_flow_api.g_varchar2_table(3) := '66756E6374696F6E28297B76617220623D746869733B6966286128222370646562756722292E6C656E677468297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F6372656174655072697661746553746F7261676522';
wwv_flow_api.g_varchar2_table(4) := '27297D622E5F76616C7565733D7B75726C3A6E756C6C2C6469616C6F675469746C653A6E756C6C2C636C6F736553656C6563746F723A6E756C6C2C70726576656E7444656661756C743A6E756C6C2C68656967687457696474684D6F64653A6E756C6C2C';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A6E756C6C2C77696474683A6E756C6C2C636C6F7365456C656D656E7453656C6563746F723A6E756C6C2C6D6F64616C5061676549643A6E756C6C2C6D6F64616C50616765436C6F736556616C75653A6E756C6C2C6469616C6F67546F70';
wwv_flow_api.g_varchar2_table(6) := '3A302C6469616C6F674C6566743A302C696672616D654865696768743A302C696672616D6557696474683A302C686173565363726F6C6C3A66616C73652C686173485363726F6C6C3A66616C73652C6175746F436C6F7365643A66616C73652C64656275';
wwv_flow_api.g_varchar2_table(7) := '673A6128222370646562756722292E6C656E677468213D3D307D3B622E5F656C656D656E74733D7B2477696E646F773A7B7D2C246469616C6F673A7B7D2C24777261707065723A7B7D2C24696672616D653A7B7D7D3B696628622E5F76616C7565732E64';
wwv_flow_api.g_varchar2_table(8) := '65627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F6372656174655072697661746553746F726167652227297D7D2C5F6372656174653A66756E6374696F6E28297B76617220633D746869733B76617220623D6E';
wwv_flow_api.g_varchar2_table(9) := '657720496D61676528293B622E7372633D632E6F7074696F6E732E6C6F6164696E67496D6167655372633B6966286128222370646562756722292E6C656E677468297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F';
wwv_flow_api.g_varchar2_table(10) := '6372656174652227293B617065782E646562756728222E2E2E4F7074696F6E7322293B666F72286E616D6520696E20632E6F7074696F6E73297B617065782E646562756728222E2E2E2E2E2E222B6E616D652B273A2022272B632E6F7074696F6E735B6E';
wwv_flow_api.g_varchar2_table(11) := '616D655D2B272227297D7D632E5F6372656174655072697661746553746F7261676528293B632E5F656C656D656E74732E2477696E646F773D612877696E646F77293B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D';
wwv_flow_api.g_varchar2_table(12) := '6F64616C2050616765202D20456E6420225F6372656174652227297D7D2C6F70656E506167653A66756E6374696F6E28642C632C662C652C622C67297B76617220683D746869733B76617220693D7B7469746C653A756E646566696E65642C636C6F7365';
wwv_flow_api.g_varchar2_table(13) := '53656C6563746F723A756E646566696E65642C6D6F64616C5061676549643A756E646566696E65642C6865696768743A756E646566696E65647D3B696628682E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C20506167';
wwv_flow_api.g_varchar2_table(14) := '65202D20537461727420226F70656E506167652227297D682E5F76616C7565732E6175746F436C6F7365643D66616C73653B682E5F76616C7565732E6469616C6F675469746C653D643B682E5F76616C7565732E636C6F7365456C656D656E7453656C65';
wwv_flow_api.g_varchar2_table(15) := '63746F723D633B682E5F76616C7565732E6D6F64616C5061676549643D663B682E5F76616C7565732E68656967687457696474684D6F64653D653B682E5F76616C7565732E6865696768743D623B682E5F76616C7565732E77696474683D673B612E636F';
wwv_flow_api.g_varchar2_table(16) := '6C6F72626F78287B7472616E736974696F6E3A682E6F7074696F6E732E7472616E736974696F6E2C7469746C653A682E5F76616C7565732E6469616C6F675469746C652C6865696768743A682E6F7074696F6E732E696E697469616C4865696768742B22';
wwv_flow_api.g_varchar2_table(17) := '7078222C77696474683A682E6F7074696F6E732E696E697469616C57696474682B227078222C696672616D653A747275652C7363726F6C6C696E673A682E6F7074696F6E732E7363726F6C6C696E672C66617374496672616D653A66616C73652C6F7665';
wwv_flow_api.g_varchar2_table(18) := '726C6179436C6F73653A66616C73652C6F7061636974793A682E6F7074696F6E732E6F7665726C61794F7061636974792C687265663A682E5F76616C7565732E75726C2C6F6E4F70656E3A66756E6374696F6E28297B696628682E6F7074696F6E732E64';
wwv_flow_api.g_varchar2_table(19) := '7261676761626C65297B61282223636F6C6F72626F7822292E647261676761626C6528292E6373732822637572736F72222C226D6F766522297D6128646F63756D656E74292E747269676765722822617065786D6F64616C706167656F70656E22297D2C';
wwv_flow_api.g_varchar2_table(20) := '6F6E436F6D706C6574653A66756E6374696F6E28297B682E5F68616E646C65496672616D654C6F616428293B6128646F63756D656E74292E747269676765722822617065786D6F64616C70616765636F6D706C65746522297D2C6F6E436C65616E75703A';
wwv_flow_api.g_varchar2_table(21) := '66756E6374696F6E28297B682E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C682E5F636865636B526573697A6554696D6572293B69662821682E5F76616C7565732E6175746F436C6F736564297B6128646F6375';
wwv_flow_api.g_varchar2_table(22) := '6D656E74292E7472696767657228226D6F64616C706167656D616E75616C636C6F7365222C7B6D6F64616C5061676549643A682E5F76616C7565732E6D6F64616C5061676549642C6D6F64616C50616765436C6F736556616C75653A2828682E5F76616C';
wwv_flow_api.g_varchar2_table(23) := '7565732E6D6F64616C50616765436C6F736556616C7565293F682E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653A2222297D297D682E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653D6E756C6C7D2C6F6E43';
wwv_flow_api.g_varchar2_table(24) := '6C6F7365643A66756E6374696F6E28297B6128646F63756D656E74292E747269676765722822617065786D6F64616C70616765636C6F73656422297D7D293B682E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569';
wwv_flow_api.g_varchar2_table(25) := '773A687D2C682E5F636865636B526573697A6554696D6572293B696628682E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420226F70656E506167652227297D7D2C6F70656E506167654672';
wwv_flow_api.g_varchar2_table(26) := '6F6D41706578546869733A66756E6374696F6E2869297B76617220673D746869733B76617220653D692E616374696F6E2E61747472696275746530323B76617220683D692E616374696F6E2E61747472696275746530333B76617220643D692E61637469';
wwv_flow_api.g_varchar2_table(27) := '6F6E2E61747472696275746530353B76617220633D692E616374696F6E2E61747472696275746530373B76617220623B76617220663B696628672E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D2053';
wwv_flow_api.g_varchar2_table(28) := '7461727420226F70656E5061676546726F6D41706578546869732227297D696628653D3D3D2253544154494322297B672E5F76616C7565732E75726C3D687D656C73657B696628653D3D3D22545249475F454C454D454E545F4154545222297B672E5F76';
wwv_flow_api.g_varchar2_table(29) := '616C7565732E75726C3D6128692E74726967676572696E67456C656D656E74292E617474722864297D7D696628633D3D3D224155544F22297B623D66616C73653B663D66616C73657D656C73657B696628633D3D3D225354415449435F505822297B623D';
wwv_flow_api.g_varchar2_table(30) := '692E616374696F6E2E61747472696275746530382B227078223B663D692E616374696F6E2E61747472696275746530392B227078227D656C73657B696628633D3D3D225354415449435F2522297B623D692E616374696F6E2E6174747269627574653038';
wwv_flow_api.g_varchar2_table(31) := '2B2225223B663D692E616374696F6E2E61747472696275746530392B2225227D7D7D672E6F70656E5061676528692E616374696F6E2E61747472696275746530312C692E616374696F6E2E61747472696275746530362C692E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(32) := '696275746531302C632C622C66293B696628672E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420226F70656E5061676546726F6D41706578546869732227297D7D2C5F68616E646C654966';
wwv_flow_api.g_varchar2_table(33) := '72616D654C6F61643A66756E6374696F6E28297B76617220653D746869733B652E5F656C656D656E74732E24696672616D653D61282223636F6C6F72626F7820696672616D6522293B76617220623D652E5F656C656D656E74732E24696672616D652E63';
wwv_flow_api.g_varchar2_table(34) := '6F6E74656E747328292E66696E6428652E5F76616C7565732E636C6F7365456C656D656E7453656C6563746F72293B76617220643D652E5F656C656D656E74732E24696672616D652E6765742830292E636F6E74656E7457696E646F773B76617220633D';
wwv_flow_api.g_varchar2_table(35) := '642E617065782E6A51756572793B696628652E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F68616E646C65496672616D654C6F61642227297D6328652E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(36) := '2E24696672616D652E636F6E74656E747328292E676574283029292E62696E642822617065786265666F7265706167657375626D6974222C66756E6374696F6E28297B6128222363626F784C6F61646564436F6E74656E7422292E6869646528293B6128';
wwv_flow_api.g_varchar2_table(37) := '222363626F784C6F6164696E674F7665726C617922292E73686F7728293B6128222363626F784C6F6164696E674772617068696322292E73686F7728297D293B652E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E66696E6428';
wwv_flow_api.g_varchar2_table(38) := '2223617065782D6465762D746F6F6C6261722C2368746D6C6462446576546F6F6C62617222292E72656D6F766528293B696628622E6C656E677468297B652E5F76616C7565732E6175746F436C6F7365643D747275653B6A51756572792E636F6C6F7262';
wwv_flow_api.g_varchar2_table(39) := '6F782E636C6F736528293B6128646F63756D656E74292E7472696767657228226D6F64616C706167656175746F636C6F7365222C7B6D6F64616C5061676549643A652E5F76616C7565732E6D6F64616C5061676549642C22246D6F64616C50616765436C';
wwv_flow_api.g_varchar2_table(40) := '6F73654F626A656374223A622E636C6F6E652874727565297D297D656C73657B652E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E66696E642822626F647922292E63737328226D617267696E222C2230707822293B61282223';
wwv_flow_api.g_varchar2_table(41) := '63626F784C6F6164696E674F7665726C617922292E6869646528293B6128222363626F784C6F6164696E674772617068696322292E6869646528293B6128222363626F784C6F61646564436F6E74656E7422292E73686F7728293B652E5F726573697A65';
wwv_flow_api.g_varchar2_table(42) := '4D6F64616C28293B652E5F656C656D656E74732E24696672616D652E72656D6F7665436C617373282275692D68656C7065722D68696464656E2D61636365737369626C6522293B652E5F656C656D656E74732E24696672616D652E6F6E6528226C6F6164';
wwv_flow_api.g_varchar2_table(43) := '222C66756E6374696F6E28297B652E5F68616E646C65496672616D654C6F616428297D297D696628652E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F68616E646C65496672616D65';
wwv_flow_api.g_varchar2_table(44) := '4C6F61642227297D7D2C5F726573697A654D6F64616C3A66756E6374696F6E2862297B76617220633D746869733B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F72';
wwv_flow_api.g_varchar2_table(45) := '6573697A654D6F64616C2227297D632E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C632E5F636865636B526573697A6554696D6572293B69662862297B6A51756572792E636F6C6F72626F782E726573697A6528';
wwv_flow_api.g_varchar2_table(46) := '7B77696474683A622E77696474682C6865696768743A622E6865696768742C696E6E65724865696768743A622E696E6E65724865696768742C696E6E657257696474683A622E696E6E657257696474687D297D656C73657B696628632E5F76616C756573';
wwv_flow_api.g_varchar2_table(47) := '2E68656967687457696474684D6F64653D3D3D224155544F22297B6A51756572792E636F6C6F72626F782E726573697A65287B696E6E65724865696768743A632E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E686569676874';
wwv_flow_api.g_varchar2_table(48) := '28292C696E6E657257696474683A632E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E776964746828297D297D656C73657B6A51756572792E636F6C6F72626F782E726573697A65287B696E6E65724865696768743A632E5F76';
wwv_flow_api.g_varchar2_table(49) := '616C7565732E6865696768742C696E6E657257696474683A632E5F76616C7565732E77696474687D297D7D632E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569773A637D2C632E5F636865636B526573697A6554';
wwv_flow_api.g_varchar2_table(50) := '696D6572293B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F726573697A654D6F64616C2227297D7D2C5F636865636B526573697A6554696D65723A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(51) := '2863297B76617220623D632E646174612E7569773B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F636865636B526573697A6554696D65722227297D696628622E5F';
wwv_flow_api.g_varchar2_table(52) := '76616C7565732E74696D6572297B636C65617254696D656F757428622E5F76616C7565732E74696D6572297D622E5F76616C7565732E74696D65723D73657454696D656F75742866756E6374696F6E28297B622E5F68616E646C6557696E646F77526573';
wwv_flow_api.g_varchar2_table(53) := '697A6528297D2C3530293B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F636865636B526573697A6554696D65722227297D7D2C5F68616E646C6557696E646F77526573';
wwv_flow_api.g_varchar2_table(54) := '697A653A66756E6374696F6E28297B76617220623D746869733B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F68616E646C6557696E646F77526573697A65222729';
wwv_flow_api.g_varchar2_table(55) := '7D696628622E5F76616C7565732E68656967687457696474684D6F6465213D3D224155544F22297B622E5F726573697A654D6F64616C28297D696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C205061676520';
wwv_flow_api.g_varchar2_table(56) := '2D20456E6420225F68616E646C6557696E646F77526573697A652227297D7D2C636C6F73653A66756E6374696F6E2863297B76617220623D746869733B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050';
wwv_flow_api.g_varchar2_table(57) := '616765202D2053746172742022636C6F73652227297D622E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653D633B6A51756572792E636F6C6F72626F782E636C6F736528293B696628622E5F76616C7565732E6465627567297B6170';
wwv_flow_api.g_varchar2_table(58) := '65782E646562756728274D6F64616C2050616765202D20456E642022636C6F73652227297D7D2C726573697A653A66756E6374696F6E2862297B7569773D746869733B6966287569772E5F76616C7565732E6465627567297B617065782E646562756728';
wwv_flow_api.g_varchar2_table(59) := '274D6F64616C2050616765202D2053746172742022726573697A652227297D7569772E5F726573697A654D6F64616C2862293B6966287569772E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E';
wwv_flow_api.g_varchar2_table(60) := '642022726573697A652227297D7D7D297D2928617065782E6A5175657279293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11527574889017592 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 'apex_modal_page.min.js'
 ,p_mime_type => 'application/javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20436F6C6F72426F782076312E332E3139202D206A5175657279206C69676874626F7820706C7567696E0D0A2F2F202863292032303131204A61636B204D6F6F7265202D206A61636B6C6D6F6F72652E636F6D0D0A2F2F204C6963656E73653A2068';
wwv_flow_api.g_varchar2_table(2) := '7474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E7068700D0A2866756E6374696F6E28612C622C63297B66756E6374696F6E205A28632C642C65297B76617220673D622E637265617465';
wwv_flow_api.g_varchar2_table(3) := '456C656D656E742863293B72657475726E2064262628672E69643D662B64292C65262628672E7374796C652E637373546578743D65292C612867297D66756E6374696F6E20242861297B76617220623D792E6C656E6774682C633D28512B612925623B72';
wwv_flow_api.g_varchar2_table(4) := '657475726E20633C303F622B633A637D66756E6374696F6E205F28612C62297B72657475726E204D6174682E726F756E6428282F252F2E746573742861293F28623D3D3D2278223F7A2E776964746828293A7A2E6865696768742829292F3130303A3129';
wwv_flow_api.g_varchar2_table(5) := '2A7061727365496E7428612C313029297D66756E6374696F6E2062612861297B72657475726E204B2E70686F746F7C7C2F5C2E286769667C706E677C6A70653F677C626D707C69636F292828237C5C3F292E2A293F242F692E746573742861297D66756E';
wwv_flow_api.g_varchar2_table(6) := '6374696F6E20626228297B76617220623B4B3D612E657874656E64287B7D2C612E6461746128502C6529293B666F72286220696E204B29612E697346756E6374696F6E284B5B625D292626622E736C69636528302C3229213D3D226F6E222626284B5B62';
wwv_flow_api.g_varchar2_table(7) := '5D3D4B5B625D2E63616C6C285029293B4B2E72656C3D4B2E72656C7C7C502E72656C7C7C226E6F666F6C6C6F77222C4B2E687265663D4B2E687265667C7C612850292E6174747228226872656622292C4B2E7469746C653D4B2E7469746C657C7C502E74';
wwv_flow_api.g_varchar2_table(8) := '69746C652C747970656F66204B2E687265663D3D22737472696E67222626284B2E687265663D612E7472696D284B2E6872656629297D66756E6374696F6E20626328622C63297B612E6576656E742E747269676765722862292C632626632E63616C6C28';
wwv_flow_api.g_varchar2_table(9) := '50297D66756E6374696F6E20626428297B76617220612C623D662B22536C69646573686F775F222C633D22636C69636B2E222B662C642C652C673B4B2E736C69646573686F772626795B315D3F28643D66756E6374696F6E28297B462E74657874284B2E';
wwv_flow_api.g_varchar2_table(10) := '736C69646573686F7753746F70292E756E62696E642863292E62696E64286A2C66756E6374696F6E28297B6966284B2E6C6F6F707C7C795B512B315D29613D73657454696D656F757428572E6E6578742C4B2E736C69646573686F775370656564297D29';
wwv_flow_api.g_varchar2_table(11) := '2E62696E6428692C66756E6374696F6E28297B636C65617254696D656F75742861297D292E6F6E6528632B2220222B6B2C65292C722E72656D6F7665436C61737328622B226F666622292E616464436C61737328622B226F6E22292C613D73657454696D';
wwv_flow_api.g_varchar2_table(12) := '656F757428572E6E6578742C4B2E736C69646573686F775370656564297D2C653D66756E6374696F6E28297B636C65617254696D656F75742861292C462E74657874284B2E736C69646573686F775374617274292E756E62696E64285B6A2C692C6B2C63';
wwv_flow_api.g_varchar2_table(13) := '5D2E6A6F696E2822202229292E6F6E6528632C66756E6374696F6E28297B572E6E65787428292C6428297D292C722E72656D6F7665436C61737328622B226F6E22292E616464436C61737328622B226F666622297D2C4B2E736C69646573686F77417574';
wwv_flow_api.g_varchar2_table(14) := '6F3F6428293A652829293A722E72656D6F7665436C61737328622B226F666620222B622B226F6E22297D66756E6374696F6E2062652862297B557C7C28503D622C626228292C793D612850292C513D302C4B2E72656C213D3D226E6F666F6C6C6F772226';
wwv_flow_api.g_varchar2_table(15) := '2628793D6128222E222B67292E66696C7465722866756E6374696F6E28297B76617220623D612E6461746128746869732C65292E72656C7C7C746869732E72656C3B72657475726E20623D3D3D4B2E72656C7D292C513D792E696E6465782850292C513D';
wwv_flow_api.g_varchar2_table(16) := '3D3D2D31262628793D792E6164642850292C513D792E6C656E6774682D3129292C537C7C28533D543D21302C722E73686F7728292C4B2E72657475726E466F6375732626612850292E626C757228292E6F6E65286C2C66756E6374696F6E28297B612874';
wwv_flow_api.g_varchar2_table(17) := '686973292E666F63757328297D292C712E637373287B6F7061636974793A2B4B2E6F7061636974792C637572736F723A4B2E6F7665726C6179436C6F73653F22706F696E746572223A226175746F227D292E73686F7728292C4B2E773D5F284B2E696E69';
wwv_flow_api.g_varchar2_table(18) := '7469616C57696474682C227822292C4B2E683D5F284B2E696E697469616C4865696768742C227922292C572E706F736974696F6E28292C6F26267A2E62696E642822726573697A652E222B702B22207363726F6C6C2E222B702C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(19) := '7B712E637373287B77696474683A7A2E776964746828292C6865696768743A7A2E68656967687428292C746F703A7A2E7363726F6C6C546F7028292C6C6566743A7A2E7363726F6C6C4C65667428297D297D292E747269676765722822726573697A652E';
wwv_flow_api.g_varchar2_table(20) := '222B70292C626328682C4B2E6F6E4F70656E292C4A2E6164642844292E6869646528292C492E68746D6C284B2E636C6F7365292E73686F772829292C572E6C6F616428213029297D66756E6374696F6E20626628297B21722626622E626F647926262859';
wwv_flow_api.g_varchar2_table(21) := '3D21312C7A3D612863292C723D5A2858292E61747472287B69643A652C22636C617373223A6E3F662B286F3F22494536223A22494522293A22227D292E6869646528292C713D5A28582C224F7665726C6179222C6F3F22706F736974696F6E3A6162736F';
wwv_flow_api.g_varchar2_table(22) := '6C757465223A2222292E6869646528292C733D5A28582C225772617070657222292C743D5A28582C22436F6E74656E7422292E617070656E6428413D5A28582C224C6F61646564436F6E74656E74222C2277696474683A303B206865696768743A303B20';
wwv_flow_api.g_varchar2_table(23) := '6F766572666C6F773A68696464656E22292C433D5A28582C224C6F6164696E674F7665726C617922292E616464285A28582C224C6F6164696E67477261706869632229292C443D5A28582C225469746C6522292C453D5A28582C2243757272656E742229';
wwv_flow_api.g_varchar2_table(24) := '2C473D5A28582C224E65787422292C483D5A28582C2250726576696F757322292C463D5A28582C22536C69646573686F7722292E62696E6428682C6264292C493D5A28582C22436C6F73652229292C732E617070656E64285A2858292E617070656E6428';
wwv_flow_api.g_varchar2_table(25) := '5A28582C22546F704C65667422292C753D5A28582C22546F7043656E74657222292C5A28582C22546F7052696768742229292C5A28582C21312C22636C6561723A6C65667422292E617070656E6428763D5A28582C224D6964646C654C65667422292C74';
wwv_flow_api.g_varchar2_table(26) := '2C773D5A28582C224D6964646C6552696768742229292C5A28582C21312C22636C6561723A6C65667422292E617070656E64285A28582C22426F74746F6D4C65667422292C783D5A28582C22426F74746F6D43656E74657222292C5A28582C22426F7474';
wwv_flow_api.g_varchar2_table(27) := '6F6D5269676874222929292E66696E6428226469762064697622292E637373287B22666C6F6174223A226C656674227D292C423D5A28582C21312C22706F736974696F6E3A6162736F6C7574653B2077696474683A3939393970783B207669736962696C';
wwv_flow_api.g_varchar2_table(28) := '6974793A68696464656E3B20646973706C61793A6E6F6E6522292C4A3D472E6164642848292E6164642845292E6164642846292C6128622E626F6479292E617070656E6428712C722E617070656E6428732C422929297D66756E6374696F6E2062672829';
wwv_flow_api.g_varchar2_table(29) := '7B72657475726E20723F28597C7C28593D21302C4C3D752E68656967687428292B782E68656967687428292B742E6F75746572486569676874282130292D742E68656967687428292C4D3D762E776964746828292B772E776964746828292B742E6F7574';
wwv_flow_api.g_varchar2_table(30) := '65725769647468282130292D742E776964746828292C4E3D412E6F75746572486569676874282130292C4F3D412E6F757465725769647468282130292C722E637373287B2270616464696E672D626F74746F6D223A4C2C2270616464696E672D72696768';
wwv_flow_api.g_varchar2_table(31) := '74223A4D7D292C472E636C69636B2866756E6374696F6E28297B572E6E65787428297D292C482E636C69636B2866756E6374696F6E28297B572E7072657628297D292C492E636C69636B2866756E6374696F6E28297B572E636C6F736528297D292C712E';
wwv_flow_api.g_varchar2_table(32) := '636C69636B2866756E6374696F6E28297B4B2E6F7665726C6179436C6F73652626572E636C6F736528297D292C612862292E62696E6428226B6579646F776E2E222B662C66756E6374696F6E2861297B76617220623D612E6B6579436F64653B5326264B';
wwv_flow_api.g_varchar2_table(33) := '2E6573634B65792626623D3D3D3237262628612E70726576656E7444656661756C7428292C572E636C6F73652829292C5326264B2E6172726F774B65792626795B315D262628623D3D3D33373F28612E70726576656E7444656661756C7428292C482E63';
wwv_flow_api.g_varchar2_table(34) := '6C69636B2829293A623D3D3D3339262628612E70726576656E7444656661756C7428292C472E636C69636B282929297D292C6128222E222B672C62292E6C6976652822636C69636B222C66756E6374696F6E2861297B612E77686963683E317C7C612E73';
wwv_flow_api.g_varchar2_table(35) := '686966744B65797C7C612E616C744B65797C7C612E6D6574614B65797C7C28612E70726576656E7444656661756C7428292C6265287468697329297D29292C2130293A21317D76617220643D7B7472616E736974696F6E3A22656C6173746963222C7370';
wwv_flow_api.g_varchar2_table(36) := '6565643A3330302C77696474683A21312C696E697469616C57696474683A22363030222C696E6E657257696474683A21312C6D617857696474683A21312C6865696768743A21312C696E697469616C4865696768743A22343530222C696E6E6572486569';
wwv_flow_api.g_varchar2_table(37) := '6768743A21312C6D61784865696768743A21312C7363616C6550686F746F733A21302C7363726F6C6C696E673A21302C696E6C696E653A21312C68746D6C3A21312C696672616D653A21312C66617374496672616D653A21302C70686F746F3A21312C68';
wwv_flow_api.g_varchar2_table(38) := '7265663A21312C7469746C653A21312C72656C3A21312C6F7061636974793A2E392C7072656C6F6164696E673A21302C63757272656E743A22696D616765207B63757272656E747D206F66207B746F74616C7D222C70726576696F75733A227072657669';
wwv_flow_api.g_varchar2_table(39) := '6F7573222C6E6578743A226E657874222C636C6F73653A22636C6F7365222C6F70656E3A21312C72657475726E466F6375733A21302C7265706F736974696F6E3A21302C6C6F6F703A21302C736C69646573686F773A21312C736C69646573686F774175';
wwv_flow_api.g_varchar2_table(40) := '746F3A21302C736C69646573686F7753706565643A323530302C736C69646573686F7753746172743A22737461727420736C69646573686F77222C736C69646573686F7753746F703A2273746F7020736C69646573686F77222C6F6E4F70656E3A21312C';
wwv_flow_api.g_varchar2_table(41) := '6F6E4C6F61643A21312C6F6E436F6D706C6574653A21312C6F6E436C65616E75703A21312C6F6E436C6F7365643A21312C6F7665726C6179436C6F73653A21302C6573634B65793A21302C6172726F774B65793A21302C746F703A21312C626F74746F6D';
wwv_flow_api.g_varchar2_table(42) := '3A21312C6C6566743A21312C72696768743A21312C66697865643A21312C646174613A756E646566696E65647D2C653D22636F6C6F72626F78222C663D2263626F78222C673D662B22456C656D656E74222C683D662B225F6F70656E222C693D662B225F';
wwv_flow_api.g_varchar2_table(43) := '6C6F6164222C6A3D662B225F636F6D706C657465222C6B3D662B225F636C65616E7570222C6C3D662B225F636C6F736564222C6D3D662B225F7075726765222C6E3D21612E737570706F72742E6F706163697479262621612E737570706F72742E737479';
wwv_flow_api.g_varchar2_table(44) := '6C652C6F3D6E262621632E584D4C48747470526571756573742C703D662B225F494536222C712C722C732C742C752C762C772C782C792C7A2C412C422C432C442C452C462C472C482C492C4A2C4B2C4C2C4D2C4E2C4F2C502C512C522C532C542C552C56';
wwv_flow_api.g_varchar2_table(45) := '2C572C583D22646976222C593B696628612E636F6C6F72626F782972657475726E3B61286266292C573D612E666E5B655D3D615B655D3D66756E6374696F6E28622C63297B76617220663D746869733B623D627C7C7B7D2C626628293B69662862672829';
wwv_flow_api.g_varchar2_table(46) := '297B69662821665B305D297B696628662E73656C6563746F722972657475726E20663B663D6128223C612F3E22292C622E6F70656E3D21307D63262628622E6F6E436F6D706C6574653D63292C662E656163682866756E6374696F6E28297B612E646174';
wwv_flow_api.g_varchar2_table(47) := '6128746869732C652C612E657874656E64287B7D2C612E6461746128746869732C65297C7C642C6229297D292E616464436C6173732867292C28612E697346756E6374696F6E28622E6F70656E292626622E6F70656E2E63616C6C2866297C7C622E6F70';
wwv_flow_api.g_varchar2_table(48) := '656E292626626528665B305D297D72657475726E20667D2C572E706F736974696F6E3D66756E6374696F6E28612C62297B66756E6374696F6E20692861297B755B305D2E7374796C652E77696474683D785B305D2E7374796C652E77696474683D745B30';
wwv_flow_api.g_varchar2_table(49) := '5D2E7374796C652E77696474683D612E7374796C652E77696474682C745B305D2E7374796C652E6865696768743D765B305D2E7374796C652E6865696768743D775B305D2E7374796C652E6865696768743D612E7374796C652E6865696768747D766172';
wwv_flow_api.g_varchar2_table(50) := '20633D302C643D302C653D722E6F666673657428292C673D7A2E7363726F6C6C546F7028292C683D7A2E7363726F6C6C4C65667428293B7A2E756E62696E642822726573697A652E222B66292C722E637373287B746F703A2D3965342C6C6566743A2D39';
wwv_flow_api.g_varchar2_table(51) := '65347D292C4B2E66697865642626216F3F28652E746F702D3D672C652E6C6566742D3D682C722E637373287B706F736974696F6E3A226669786564227D29293A28633D672C643D682C722E637373287B706F736974696F6E3A226162736F6C757465227D';
wwv_flow_api.g_varchar2_table(52) := '29292C4B2E7269676874213D3D21313F642B3D4D6174682E6D6178287A2E776964746828292D4B2E772D4F2D4D2D5F284B2E72696768742C227822292C30293A4B2E6C656674213D3D21313F642B3D5F284B2E6C6566742C227822293A642B3D4D617468';
wwv_flow_api.g_varchar2_table(53) := '2E726F756E64284D6174682E6D6178287A2E776964746828292D4B2E772D4F2D4D2C30292F32292C4B2E626F74746F6D213D3D21313F632B3D4D6174682E6D6178287A2E68656967687428292D4B2E682D4E2D4C2D5F284B2E626F74746F6D2C22792229';
wwv_flow_api.g_varchar2_table(54) := '2C30293A4B2E746F70213D3D21313F632B3D5F284B2E746F702C227922293A632B3D4D6174682E726F756E64284D6174682E6D6178287A2E68656967687428292D4B2E682D4E2D4C2C30292F32292C722E637373287B746F703A652E746F702C6C656674';
wwv_flow_api.g_varchar2_table(55) := '3A652E6C6566747D292C613D722E776964746828293D3D3D4B2E772B4F2626722E68656967687428293D3D3D4B2E682B4E3F303A617C7C302C735B305D2E7374796C652E77696474683D735B305D2E7374796C652E6865696768743D2239393939707822';
wwv_flow_api.g_varchar2_table(56) := '2C722E6465717565756528292E616E696D617465287B77696474683A4B2E772B4F2C6865696768743A4B2E682B4E2C746F703A632C6C6566743A647D2C7B6475726174696F6E3A612C636F6D706C6574653A66756E6374696F6E28297B69287468697329';
wwv_flow_api.g_varchar2_table(57) := '2C543D21312C735B305D2E7374796C652E77696474683D4B2E772B4F2B4D2B227078222C735B305D2E7374796C652E6865696768743D4B2E682B4E2B4C2B227078222C4B2E7265706F736974696F6E262673657454696D656F75742866756E6374696F6E';
wwv_flow_api.g_varchar2_table(58) := '28297B7A2E62696E642822726573697A652E222B662C572E706F736974696F6E297D2C31292C6226266228297D2C737465703A66756E6374696F6E28297B692874686973297D7D297D2C572E726573697A653D66756E6374696F6E2861297B5326262861';
wwv_flow_api.g_varchar2_table(59) := '3D617C7C7B7D2C612E77696474682626284B2E773D5F28612E77696474682C227822292D4F2D4D292C612E696E6E657257696474682626284B2E773D5F28612E696E6E657257696474682C22782229292C412E637373287B77696474683A4B2E777D292C';
wwv_flow_api.g_varchar2_table(60) := '612E6865696768742626284B2E683D5F28612E6865696768742C227922292D4E2D4C292C612E696E6E65724865696768742626284B2E683D5F28612E696E6E65724865696768742C22792229292C21612E696E6E6572486569676874262621612E686569';
wwv_flow_api.g_varchar2_table(61) := '676874262628412E637373287B6865696768743A226175746F227D292C4B2E683D412E6865696768742829292C412E637373287B6865696768743A4B2E687D292C572E706F736974696F6E284B2E7472616E736974696F6E3D3D3D226E6F6E65223F303A';
wwv_flow_api.g_varchar2_table(62) := '4B2E737065656429297D2C572E707265703D66756E6374696F6E2862297B66756E6374696F6E206728297B72657475726E204B2E773D4B2E777C7C412E776964746828292C4B2E773D4B2E6D7726264B2E6D773C4B2E773F4B2E6D773A4B2E772C4B2E77';
wwv_flow_api.g_varchar2_table(63) := '7D66756E6374696F6E206828297B72657475726E204B2E683D4B2E687C7C412E68656967687428292C4B2E683D4B2E6D6826264B2E6D683C4B2E683F4B2E6D683A4B2E682C4B2E687D69662821532972657475726E3B76617220632C643D4B2E7472616E';
wwv_flow_api.g_varchar2_table(64) := '736974696F6E3D3D3D226E6F6E65223F303A4B2E73706565643B412E72656D6F766528292C413D5A28582C224C6F61646564436F6E74656E7422292E617070656E642862292C412E6869646528292E617070656E64546F28422E73686F772829292E6373';
wwv_flow_api.g_varchar2_table(65) := '73287B77696474683A6728292C6F766572666C6F773A4B2E7363726F6C6C696E673F226175746F223A2268696464656E227D292E637373287B6865696768743A6828297D292E70726570656E64546F2874292C422E6869646528292C612852292E637373';
wwv_flow_api.g_varchar2_table(66) := '287B22666C6F6174223A226E6F6E65227D292C6F262661282273656C65637422292E6E6F7428722E66696E64282273656C6563742229292E66696C7465722866756E6374696F6E28297B72657475726E20746869732E7374796C652E7669736962696C69';
wwv_flow_api.g_varchar2_table(67) := '7479213D3D2268696464656E227D292E637373287B7669736962696C6974793A2268696464656E227D292E6F6E65286B2C66756E6374696F6E28297B746869732E7374796C652E7669736962696C6974793D22696E6865726974227D292C633D66756E63';
wwv_flow_api.g_varchar2_table(68) := '74696F6E28297B66756E6374696F6E207128297B6E2626725B305D2E7374796C652E72656D6F7665417474726962757465282266696C74657222297D76617220622C632C673D792E6C656E6774682C682C693D226672616D65426F72646572222C6B3D22';
wwv_flow_api.g_varchar2_table(69) := '616C6C6F775472616E73706172656E6379222C6C2C6F2C703B69662821532972657475726E3B6C3D66756E6374696F6E28297B636C65617254696D656F75742856292C432E6869646528292C6263286A2C4B2E6F6E436F6D706C657465297D2C6E262652';
wwv_flow_api.g_varchar2_table(70) := '2626412E66616465496E28313030292C442E68746D6C284B2E7469746C65292E6164642841292E73686F7728293B696628673E31297B747970656F66204B2E63757272656E743D3D22737472696E67222626452E68746D6C284B2E63757272656E742E72';
wwv_flow_api.g_varchar2_table(71) := '65706C61636528227B63757272656E747D222C512B31292E7265706C61636528227B746F74616C7D222C6729292E73686F7728292C475B4B2E6C6F6F707C7C513C672D313F2273686F77223A2268696465225D28292E68746D6C284B2E6E657874292C48';
wwv_flow_api.g_varchar2_table(72) := '5B4B2E6C6F6F707C7C513F2273686F77223A2268696465225D28292E68746D6C284B2E70726576696F7573292C4B2E736C69646573686F772626462E73686F7728293B6966284B2E7072656C6F6164696E67297B623D5B24282D31292C242831295D3B77';
wwv_flow_api.g_varchar2_table(73) := '68696C6528633D795B622E706F7028295D296F3D612E6461746128632C65292E687265667C7C632E687265662C612E697346756E6374696F6E286F292626286F3D6F2E63616C6C286329292C6261286F29262628703D6E657720496D6167652C702E7372';
wwv_flow_api.g_varchar2_table(74) := '633D6F297D7D656C7365204A2E6869646528293B4B2E696672616D653F28683D5A2822696672616D6522295B305D2C6920696E2068262628685B695D3D30292C6B20696E2068262628685B6B5D3D227472756522292C682E6E616D653D662B202B286E65';
wwv_flow_api.g_varchar2_table(75) := '772044617465292C4B2E66617374496672616D653F6C28293A612868292E6F6E6528226C6F6164222C6C292C682E7372633D4B2E687265662C4B2E7363726F6C6C696E677C7C28682E7363726F6C6C696E673D226E6F22292C612868292E616464436C61';
wwv_flow_api.g_varchar2_table(76) := '737328662B22496672616D6522292E617070656E64546F2841292E6F6E65286D2C66756E6374696F6E28297B682E7372633D222F2F61626F75743A626C616E6B227D29293A6C28292C4B2E7472616E736974696F6E3D3D3D2266616465223F722E666164';
wwv_flow_api.g_varchar2_table(77) := '65546F28642C312C71293A7128297D2C4B2E7472616E736974696F6E3D3D3D2266616465223F722E66616465546F28642C302C66756E6374696F6E28297B572E706F736974696F6E28302C63297D293A572E706F736974696F6E28642C63297D2C572E6C';
wwv_flow_api.g_varchar2_table(78) := '6F61643D66756E6374696F6E2862297B76617220632C642C653D572E707265703B543D21302C523D21312C503D795B515D2C627C7C626228292C6263286D292C626328692C4B2E6F6E4C6F6164292C4B2E683D4B2E6865696768743F5F284B2E68656967';
wwv_flow_api.g_varchar2_table(79) := '68742C227922292D4E2D4C3A4B2E696E6E657248656967687426265F284B2E696E6E65724865696768742C227922292C4B2E773D4B2E77696474683F5F284B2E77696474682C227822292D4F2D4D3A4B2E696E6E6572576964746826265F284B2E696E6E';
wwv_flow_api.g_varchar2_table(80) := '657257696474682C227822292C4B2E6D773D4B2E772C4B2E6D683D4B2E682C4B2E6D617857696474682626284B2E6D773D5F284B2E6D617857696474682C227822292D4F2D4D2C4B2E6D773D4B2E7726264B2E773C4B2E6D773F4B2E773A4B2E6D77292C';
wwv_flow_api.g_varchar2_table(81) := '4B2E6D61784865696768742626284B2E6D683D5F284B2E6D61784865696768742C227922292D4E2D4C2C4B2E6D683D4B2E6826264B2E683C4B2E6D683F4B2E683A4B2E6D68292C633D4B2E687265662C563D73657454696D656F75742866756E6374696F';
wwv_flow_api.g_varchar2_table(82) := '6E28297B432E73686F7728297D2C313030292C4B2E696E6C696E653F285A2858292E6869646528292E696E736572744265666F726528612863295B305D292E6F6E65286D2C66756E6374696F6E28297B612874686973292E7265706C6163655769746828';
wwv_flow_api.g_varchar2_table(83) := '412E6368696C6472656E2829297D292C65286128632929293A4B2E696672616D653F6528222022293A4B2E68746D6C3F65284B2E68746D6C293A62612863293F286128523D6E657720496D616765292E616464436C61737328662B2250686F746F22292E';
wwv_flow_api.g_varchar2_table(84) := '6572726F722866756E6374696F6E28297B4B2E7469746C653D21312C65285A28582C224572726F7222292E7465787428225468697320696D61676520636F756C64206E6F74206265206C6F616465642229297D292E6C6F61642866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(85) := '7B76617220613B522E6F6E6C6F61643D6E756C6C2C4B2E7363616C6550686F746F73262628643D66756E6374696F6E28297B522E6865696768742D3D522E6865696768742A612C522E77696474682D3D522E77696474682A617D2C4B2E6D772626522E77';
wwv_flow_api.g_varchar2_table(86) := '696474683E4B2E6D77262628613D28522E77696474682D4B2E6D77292F522E77696474682C642829292C4B2E6D682626522E6865696768743E4B2E6D68262628613D28522E6865696768742D4B2E6D68292F522E6865696768742C64282929292C4B2E68';
wwv_flow_api.g_varchar2_table(87) := '262628522E7374796C652E6D617267696E546F703D4D6174682E6D6178284B2E682D522E6865696768742C30292F322B22707822292C795B315D2626284B2E6C6F6F707C7C795B512B315D29262628522E7374796C652E637572736F723D22706F696E74';
wwv_flow_api.g_varchar2_table(88) := '6572222C522E6F6E636C69636B3D66756E6374696F6E28297B572E6E65787428297D292C6E262628522E7374796C652E6D73496E746572706F6C6174696F6E4D6F64653D226269637562696322292C73657454696D656F75742866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(89) := '7B652852297D2C31297D292C73657454696D656F75742866756E6374696F6E28297B522E7372633D637D2C3129293A632626422E6C6F616428632C4B2E646174612C66756E6374696F6E28622C632C64297B6528633D3D3D226572726F72223F5A28582C';
wwv_flow_api.g_varchar2_table(90) := '224572726F7222292E7465787428225265717565737420756E7375636365737366756C3A20222B642E73746174757354657874293A612874686973292E636F6E74656E74732829297D297D2C572E6E6578743D66756E6374696F6E28297B21542626795B';
wwv_flow_api.g_varchar2_table(91) := '315D2626284B2E6C6F6F707C7C795B512B315D29262628513D242831292C572E6C6F61642829297D2C572E707265763D66756E6374696F6E28297B21542626795B315D2626284B2E6C6F6F707C7C5129262628513D24282D31292C572E6C6F6164282929';
wwv_flow_api.g_varchar2_table(92) := '7D2C572E636C6F73653D66756E6374696F6E28297B5326262155262628553D21302C533D21312C6263286B2C4B2E6F6E436C65616E7570292C7A2E756E62696E6428222E222B662B22202E222B70292C712E66616465546F283230302C30292C722E7374';
wwv_flow_api.g_varchar2_table(93) := '6F7028292E66616465546F283330302C302C66756E6374696F6E28297B722E6164642871292E637373287B6F7061636974793A312C637572736F723A226175746F227D292E6869646528292C6263286D292C412E72656D6F766528292C73657454696D65';
wwv_flow_api.g_varchar2_table(94) := '6F75742866756E6374696F6E28297B553D21312C6263286C2C4B2E6F6E436C6F736564297D2C31297D29297D2C572E72656D6F76653D66756E6374696F6E28297B61285B5D292E6164642872292E6164642871292E72656D6F766528292C723D6E756C6C';
wwv_flow_api.g_varchar2_table(95) := '2C6128222E222B67292E72656D6F7665446174612865292E72656D6F7665436C6173732867292E64696528297D2C572E656C656D656E743D66756E6374696F6E28297B72657475726E20612850297D2C572E73657474696E67733D647D29286A51756572';
wwv_flow_api.g_varchar2_table(96) := '792C646F63756D656E742C74686973293B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11528271654019078 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 'jquery.colorbox-min.js'
 ,p_mime_type => 'application/javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000320103000000A73523C900000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001849444154785E95C1010D0000008230A31B9D066CFC330F0526820B01E3EC9A99';
wwv_flow_api.g_varchar2_table(2) := '0000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11528967341021094 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1border.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000150103000000BD9C164700000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001749444154785E7DC1210100000083B0477F7434866DD7007AAA03813389C49000';
wwv_flow_api.g_varchar2_table(2) := '00000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11529664321022447 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderBottomCenter.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000656565B7B7B7000000000000CFCFCF000000000000000000000000FFFFFF94C88E050000000C74524E538000789FC75830D7';
wwv_flow_api.g_varchar2_table(2) := '386810181AE7B20E0000005349444154785E85CAB10D8020180561125DE05991D83088235830028D5B50390133D0B18503FC4311A289579878D5579C7B32B3EBCB19DEE019763B3CE5E1FF021CE1042FB08755E00AAFE1B51AAC13D6716F1D361416074A';
wwv_flow_api.g_varchar2_table(3) := 'BD57B20000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11530362380023380 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderBottomLeft.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000656565B7B7B7000000000000CFCFCF000000000000000000000000FFFFFF94C88E050000000C74524E538000789FC75830D7';
wwv_flow_api.g_varchar2_table(2) := '386810181AE7B20E0000005549444154785E9DC6B10D80201005D0CB55DA791BD858D938822338026E60C2048EE0086C426179434142E05F2879D523558D54F47FCC0FFC27FCC43D0D5ACD2F7387F2824FE61FCE01DFA57D0EEDFC4AFD764B7E02967416';
wwv_flow_api.g_varchar2_table(3) := '07AA8DD7170000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11531060439024239 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderBottomRight.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000000101030000000B9E775800000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001449444154785E0580B1090000004094FFFF350A6C010200FC69A300E400000000';
wwv_flow_api.g_varchar2_table(2) := '49454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11531791482025053 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderMiddleLeft.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000000101030000000B9E775800000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001449444154785E05C001090000008020FF8F8E100302FE00FFBFDBF57F00000000';
wwv_flow_api.g_varchar2_table(2) := '49454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11532488894026280 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderMiddleRight.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000150103000000BD9C164700000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001749444154785E7DC1210100000083B0477F742C8A6DE50E18AA0381149316F900';
wwv_flow_api.g_varchar2_table(2) := '00000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11533186306027468 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderTopCenter.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000000000000000000000000000000000656565CFCFCFB7B7B7000000FFFFFF3B8665F90000000C74524E538000783058106838';
wwv_flow_api.g_varchar2_table(2) := '9FD7C7183A2073AD0000005449444154785E9DC6A10D80401044D19104070681D9121014400D0834355007256C091441015B147709D99920F9E63F74A5D950AB3ECA5E6F488F46AFA0777A00EBC59378111BFED5F89DBE22DD067D8A5D1C1F3F3EC015AD';
wwv_flow_api.g_varchar2_table(3) := '86FEAAE00000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11533883718028682 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderTopLeft.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000000000000000000000000000656565000000CFCFCFB7B7B7000000FFFFFF96FF543C0000000C74524E53800078583868109F';
wwv_flow_api.g_varchar2_table(2) := '30D7C718E289AB9F0000005249444154785E8DC6B10D406010C7D17F2EF46E03895263052318E1DBC0086CA0D31A452D379484E27E85C2AB9E1EDDEAEE8D5E36E65597BC7ADC4A5E135EE1866BC107BCD51FB1E371E0171E33BEE1E7C76FFB181607D27D';
wwv_flow_api.g_varchar2_table(3) := '175A0000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11534481346029732 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1borderTopRight.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000B0000000320806000000FCCF518D0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000AEF4944415478DAEC5D5B6C14D719FEC137ECD8E035361787C66014';
wwv_flow_api.g_varchar2_table(2) := '1A2EA5126E5A356D95982E455C525AA4A86DA2A65221CB53D4F6A1AA5B449F1A8C1FA884821F705BA9A18E4915A04A534C2319DC848221C9D6A1D4405C2EB5C1C6368ED76137BE81E5CE77D8339C1DCFCCCECCEECCEE2CF349471EEFCECC37FF9E6FFEF3';
wwv_flow_api.g_varchar2_table(3) := '9FCBFC338388F690054C4D4DFD823CD8811912E2ED532595CA68F1397C7D21A95C8B96A0019D4C1934BACECAC5643F8C0A191B1B6365D6AC59ACB80810AE3F05A215E18B5E07BF96162342B60B6921E05BB76ED1F0F0308D8C8C4CFBAEA0A0808A8B8B69';
wwv_flow_api.g_varchar2_table(4) := 'E1C2850F330744F35CD4E3A613F87541CC6F46BDB3B3CD552A430854F6D5AB57E50A2E2C2AA2ECAC2CF9FB7B939314098765412C5DBA9489C02A47494989EC71F3F3F369747454F6C843434349E148821DCA10022209A4D8EB1A0D2D1A9422B63B844899';
wwv_flow_api.g_varchar2_table(5) := '80AF5FBFCE44830A2F292BA782FC5CCAC99A11D3A443587727A768647482866EF7320140844B962C31C581637C3E1F65E5E469724CDE1DA7502824EF6F94E3C6CD9B34D0DF6FDA8E79F3E7D3E7162D8A2760B7885753C41919037361A1128B0A0B256F34';
wwv_flow_api.g_varchar2_table(6) := '47753F16A34A7F8B1EC9A7BCEC290A47224C2C403C81891CC5BEB9EC1C7A1C924F6602CFCEC9B1C461D50E0D11733CE722F18A214543C6C6C0686E8D084B0934B9101880CA8747D56A86458EB2D252C31D355C4B4E56A9698E44ECB82FFC62BD9106B7A1';
wwv_flow_api.g_varchar2_table(7) := '327AED8E74EC663A6D1D624534B7A838A3952E0A0CC7E1781E736A71200CC0BE664719B03F8EC3F1F1386CB6C3EFE2811EC7AEDD5101A397CEBD90E87510479E3C7992156C739C3E73867D86BFA207E3C7F2F3A971141495E876C62E5DBA44E1CF4635BD';
wwv_flow_api.g_varchar2_table(8) := '248E8FC7A1B4432DC4D0F3C43A7654B92C74D01A6ACB2C01A3D985D7C108404C654A4DF0952B57A8ADAD8D8E3737336141B4FF686D659F95F862EB921F8FF3697120D68C77331D7AFD4F31378C087EBC1E87D20E11478F1E95AEFDACEE35E8D85149EE47';
wwv_flow_api.g_varchar2_table(9) := '65C60918BD6F0C31299B7534A91B366E64DBB76FDFA653EFB6D299D3A7D9FFCB972F6745D9CCA389571B6FD5E28060E111798168C0F5C6A143AA9ED20A07176353D321E6E12391700CA7924787C313703A8F42A801BDF167AAAB99D76D6F6F679F959595';
wwv_flow_api.g_varchar2_table(10) := 'D1BAF51B54C565161014BCB912E888EDDCB993B66FDF4E6BD7AE35CC218EF38AA1106E88898909F9666C6A6A92841CA1AEAE2EAAA8A8A0DADA5A231CBE0C10B02336CC4C85655A1557B5660DE5E6E6B20AEFE8E8A095AB5699EE20191520840B8ECECE4E';
wwv_flow_api.g_varchar2_table(11) := '1A1F1FA7FAFA7A6A96C217A3C0E484C8010F2F8A17801DDDDDDD3287870CF0C0F7EEDED5891BFF4267CF3E881BEBF7EFA7952B56989E1953E340D30E3185C3615531AD5FBF9E3646C3182B1C982286076F68B83F043A3838E8A92B534308BE9046443018';
wwv_flow_api.g_varchar2_table(12) := 'A423470EB3ED6DDBB651636323135A5D5D5D4CB3CB8F37CB81E6FBE9A79F91FFBF70E1DFCC33E6E5E54D0B1FAC7254555551201090455C5A5A1AC3A99CE830C26115D275F8A4E297AEC9542C2AD5C335E9FA5BA412F204AC007AEE68BA314120563CBCE3';
wwv_flow_api.g_varchar2_table(13) := 'DEBD7BD9F6B265CB98279C2379DDDF4A9F4164E8D16FDDBA35A6E2F934B4510E880B85430A4D595CBA6BD7AE699D44AB1C9CA7A6A686F64BAD07C2A1E79FFF81EE0DA0C591088E1D3BE6977E434BC35810FC810307025BB66C096EDAB4A9C513B0385C26';
wwv_flow_api.g_varchar2_table(14) := '89123D6E2CA211C3828E8B1769F3E667D97675F57D8FF5B5A79EA2FEBE3EA992C75911C117E1A885169C03D3B57AA147C5E20A76D368AD0EC3F1F138947670600A1A374673F371DDDF43CF8E54885704CE219D8BD25DC48E2FE641A8005859F5C5BD359F';
wwv_flow_api.g_varchar2_table(15) := 'BD123D6A2A38E039710358E540C70F378282038B792CD509C20678CF640A64C78E1D0D09841335762FE6717C1402A202B0F24B6B264C0BD81FC789E789C7A13611114F58463920BE44ECC0F17A1C16049CF4295C3BCEE9EA4E1CBC1506EFF9FADB499D05';
wwv_flow_api.g_varchar2_table(16) := '336AC2E2CB1DF58E5172186DA613E1B0C30E2BF16BB2EBCB8E73BA7E14822F534425A223835810D3AACA477CF8A33FF89E3FE96074ADAEC8212E79D4E21097385AE1B0CB0E0F6928605EF9E8C523D6E453A9A8540095CF8798442F6A36A61539204E14CE';
wwv_flow_api.g_varchar2_table(17) := '2122591C76D9E1210D05CC9B617460F8B36462258B4356893CAF96291C1ED250C01CA8545EB1763D312C72B8D90E0F692860119952E19E709DC14CEF27F0E009D8838787398410C74695E08FC427DA6B7722B1891376784823012B1382888947C48E10DF';
wwv_flow_api.g_varchar2_table(18) := '27194947301EAC9674A4B7B797956470D86187873413303C22046326210804505E5E6ED8531A4D9E8267F2440E33930C4ED8E121CD04CC2BDD6C421034CF380E8857F94E244F71C20E0F69266034B7BCD2AD2604C1F198B2B53BE948BCC42676DB611658';
wwv_flow_api.g_varchar2_table(19) := '8C9EECB50B38A7370A2120D18420109591C4264E244FB1DB0EB3C09314C9AE2F3BCEE95A016B250439FCF776DA77B09595B6F6FB373C961C36FCF99FF2E7FD839F4E3B3691A423E0ECEAFD44D34B268B43CF13EB7158145BA8B9B93969299D70AE747FB4';
wwv_flow_api.g_varchar2_table(20) := '282D129B3CB9FA31EAFCDF002B475BCE33B1BE73EA329DFFB8877DE69B5340F34B1FC49746129B14CED66F967B068669FFEBEFD1E56B7DAADF1BE1D04A6C829BAFB6E11D6A7DBF53F71AF438AC024F502443C43887F74891023CADA8728AB5A27C2E6DF8';
wwv_flow_api.g_varchar2_table(21) := 'C60A3A7EEA22EBA9D7379DA24F863F63DFCD2D7E84BEEB5F3DAD53A45CEFABE4C048800878767E4E00DBE07AB5F15DDABAEE8BF4CDAF3E619A436DAA185EFD0F87DB642EF10601DF9A958F19E24854C4814020E83DD469076156966AC56FAEFE025DBD31';
wwv_flow_api.g_varchar2_table(22) := 'C83C2EAFFCB1897BB4E37B5F9F16631A5963A0DCE7FD0B5DECDCD3BCE99D51FAF5ABCD74E2DC7F69F74F9F35CCA166076E12B420102A076E10D8D17D4BEAF40D7C4A1D6FFFCA941D898413527933D347211CEFC461E2400BDFDFB886FD8D8C8C5367D7A0';
wwv_flow_api.g_varchar2_table(23) := '1436CCA647E7DB33E00FE17E74B9873EFAB89786C363F4D6890BF4F26F0E5BB6E35F1DDDD4F8F60731E2857061C7D9F35D4CBC1E32C003EB2536D9D7F81E7DF89F1B14898A00A27AF1DB4FD213950B12E6B81319A39B7DC334327E8F86240F0F7189F8FC';
wwv_flow_api.g_varchar2_table(24) := '927954F392DF32C7E38BCB68F1A373A5EBEFA621E9E6B8131E95EDF090411E98792695841E07DF3AC7048B4A2F9FF7A0C3F6F22B47A63D346934E988889C9C6C2A9E9D4FE56545B4EAF10554989F2B7FB7F62BCBE8B5DA1762BCBD590E84393FDFE6A7A5';
wwv_flow_api.g_varchar2_table(25) := '1565CCDB72F17E69E5A29862D08E500668CB111BD222B1093A3A75BF3FC1B621AC3FEE7E81F6FCAE854E9EEB6462A895B6C5F8D44AD2919A97D6C5ECF7A39A83F461C74DFAA1E4E195DF59E500709D5F5E55413BF7FD8DFDFFDA9E17756F000D0E8C2556';
wwv_flow_api.g_varchar2_table(26) := 'B95CC08E4C8038EA81F9B8274FE8217BDFBF7E207BA85F06BEC53CE1EE9F6D923FEBE90B514FFF83A1A678894DD43894985D5840AFFC64B3AA7813E5F88E7F351DD9F7E3182F6F92E31AB91F8ED89092C42636250489E100F4567D212CD19A414B566213';
wwv_flow_api.g_varchar2_table(27) := 'DC745A9DD038894DF017BFAF5BD3AC227CA88BEA24B3129B601556321282E03C5A30923C454BBC4693A718B1434BBC06ED6821F7C2B16B777C14021E4B7CB120CD5B60682D012A7D70A04F4E08A2B78ACB89A4230ED8112477BEA9C8D03B945D2B604099';
wwv_flow_api.g_varchar2_table(28) := '100442C1D4AF9A0050E1913BC30925367122798A4D766022C26D2F3A7474F224A5AF9AE5EB6979CF1EC2C28B0631CB8589028CB54218FC31202B8BC0C57816B023E94892EDF05E35EB1601AB09402BDE74C3CBBEF96B67B5A0F37A593D017311A7E3CBBE';
wwv_flow_api.g_varchar2_table(29) := 'C5B041F565DF0F8580951E53395C956C38917424013BD404CC8198D89F46DE3814EDB00575749279EF4AD683130F3B3A9174C4263B828ACE5D650AC41C8A7A5C473B6B5AF8BF00030015B9F633044DE3E40000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11535178758030960 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1controls.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFFFF5500FEFBFAFEE3D6FEE6DAFEFCFCFED0BAFEAA80FEB08AFED4C0FEF8F6FEEFE8FEAF88FEA87EFEBFA0FEEEE6FE9F70FE8B52FEAB82FEECE4FEF6F2FEA77CFEC0A2FEC8AEFE7836FE7B3AFE7F40FE9B6AFEE7DC';
wwv_flow_api.g_varchar2_table(2) := 'FEF7F4FEA67AFEC3A6FEFAF8FEDAC8FE7C3CFE9C6CFEF0EAFEBE9EFEA478FED3BEFEE0D2FE7734FE7A38FEC7ACFED8C6FEDCCCFEF3EEFEE2D4FE7430FECCB4FED2BCFEC4A8FEF4F0FE9E6EFEB692FEE4D8FEEBE2FEAE86FE6012FE5F10FE6C24FE5E0EFE';
wwv_flow_api.g_varchar2_table(3) := '732EFEBB9AFEEAE0FEE8DEFEF2ECFECAB0FEBC9CFEB896FE9662FEB38EFEB794FE8346FE874CFE8A50FE8244FE864AFEB490FEDECEFE8448FE8042FEDFD0FED6C2FE884EFEBA98FE661AFE6F28FE7632FE6316FE6214FECFB8FE905AFE8C54FEC2A4FEA0';
wwv_flow_api.g_varchar2_table(4) := '72FE8F58FE935EFE9764FE925CFE8E56FE6B22FE6A20FE681EFE702AFEDBCAFED7C4FE9A68FECEB6FE9866FE722CFEC6AAFE6418FE9460FE671CFEA274FEA376FECBB2FE6E26FEAC84FE7E3EFEB28CFE5C0C00000000000000000000000000000021FF0B';
wwv_flow_api.g_varchar2_table(5) := '4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904090500';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90409050000002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F90409050000002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F90409050000002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90409050000002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90409050000002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90409050000002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F90409050000002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F90409050000002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11535875955032280 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1loading.gif'
 ,p_mime_type => 'image/gif'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB86D000000644944415458C3EDD9B10DC0300CC4C01F41237B438FA21198C6459A944114809CE00075AF240950C0029AEFEB63A9DC709B796DA072B4535B1972D6C77387E1';
wwv_flow_api.g_varchar2_table(2) := '09142850A0408102050A142850A0408102050A1428F055600FF6F52F26E0D923FAF437C405F1FDCBC98CD47AF60000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11536566681036540 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1loading_background.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000001E0000001E0403000000C91EB39100000030504C5445FFFFFF0707070808081414141717170000000000000000000000000000000000000000000000000000000000000000006E6A76E400000041494441';
wwv_flow_api.g_varchar2_table(2) := '54789CECCEA10D002010C5D0AE503620B7C1850DD87F2724F91A8BA979A6B48E75C3D4DA372437C993644996644996E44172F1FF9EFE0E000000FFFF03002A7338C822DD04790000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11537264309037565 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't1overlay.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000007D000000320803000000465024AE0000004B504C5445BFBFBF9F9F9FEFEFEFFFFFFF8787870F0F0F3F3F3F7F7F7FDFDFDF808080000000CFCFCF979797B7B7B76F6F6FAFAFAFE7E7E7F7F7F72F2F2FA7A7';
wwv_flow_api.g_varchar2_table(2) := 'A78F8F8FC7C7C75F5F5FD7D7D74F4F4F00B3460C000001AA49444154785EEDD5D96AEC300C00502DDE9D7D96F6FFBFF47AC284D2B1CC44507A1F6A3D2460111D142205F87F46D7BB7E9381DBAA03C2225384087C4324495F8728037110F875300F643175';
wwv_flow_api.g_varchar2_table(3) := '126216F5102332C618047D31B1A5C702D54439DD1F0221352AF55CF0888897EFC88C88255175B3BB263F2E8BA0C7CBAAD1211EF1D2F711A3C4C71A3F6A0D745E1F634B7FC72F2CEBD1D0691D7E5E1FCEEB9CDFE959F9E671E5B3FA516C0480974A00E36E';
wwv_flow_api.g_varchar2_table(4) := '48B881E657372B278E86F6C40DA49CB8CC4A9DD7B9A18BE3B398E7B6117A3781B57A7BD3CA9B8BE8B8550AB11804F0C11F00D4FF715DFFEDE87AD7BBDEF5AB0C5C495932CB5470CEF3D5B920E9B42519489BC0D3661F48B675D227147548C9B14B09043D';
wwv_flow_api.g_varchar2_table(5) := 'DBD4D253816AA29CEE0F79213529752C7872CE7D7E47EEE5A824AA6E76D7E2E392053D7D9246F7E98897BE8F98243ED5F8516B0BE7F529B5F4777C66594F369CD6FDCFEBDB799DF19D8ECA37EF88CFEA47B1C97BFF52C9FB693724DCFAE65777574E5CD8';
wwv_flow_api.g_varchar2_table(6) := 'DA13B705E5C4212B75A67B4317C727DBE7B6117AB7C05ABDBD69513C0DE1B8554A603182F733CFDE87BFF88FEB7AD7BBFE0F185E5A60ACCE5D1E0000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11537989313041196 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't2controls.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000000000E2E2E20303032323232020200101013C3C3C7070706767673737370707071313136868687171715353531515157E7E7E9999996E6E6E1717170A0A0A737373515151474747B1B1B1AEAEAEA9A9A98383831E1E1E';
wwv_flow_api.g_varchar2_table(2) := '0808087575754E4E4E050505303030ACACAC818181111111555555777777383838272727B3B3B3B0B0B04848483131312C2C2C0E0E0E252525B7B7B74141413A3A3A4C4C4C0C0C0C8080806060602121211818186A6A6AD1D1D1D3D3D3C1C1C1D5D5D5B9';
wwv_flow_api.g_varchar2_table(3) := 'B9B95858581A1A1A1C1C1C1010104545455757575C5C5C8A8A8A6363635E5E5EA3A3A39E9E9E9A9A9AA5A5A5A0A0A06161612A2A2AA1A1A1A7A7A72828283535359C9C9C5A5A5ACACACABEBEBEB5B5B5CECECED0D0D03E3E3E9191919797975050507C7C';
wwv_flow_api.g_varchar2_table(4) := '7C9393938E8E8E898989909090959595C3C3C3C5C5C5C7C7C7BCBCBC2E2E2E333333858585404040878787BABABA4A4A4ACCCCCC8C8C8CC9C9C97A7A7A797979434343C0C0C06C6C6CAAAAAA656565D7D7D700000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11538686510042481 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't2loading.gif'
 ,p_mime_type => 'image/gif'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000620000008208030000008A3FEDBE000000D2504C5445FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666664E4F504A4A4A2929';
wwv_flow_api.g_varchar2_table(2) := '2919191A101010080808EFEFEF5A5A5A6B6B6B87898B7F80817B7B7B7677787373736E6F71EAEAEBEAEBEBE6E6E7525252DEDEDF4546474242423A3A3A2D2D2E212121BDBDBDCFD0D2333333C5C5C6D2D3D4ADAFB1A7A8A9A5A5A69999998F90928B8B8B';
wwv_flow_api.g_varchar2_table(3) := 'E2E3E4838384CCCCCCC1C3C4DADBDCB7B9BBD6D6D7B4B5B5F7F7F7FFFFFFE0E1E2D8D9DAC7C8CAA9ABAD939394ADADADA0A2A4A1BA27710000000F74524E5300112233445566778899AABBCCDDEE462AF5990000052F49444154785EEDDA5797B2380080';
wwv_flow_api.g_varchar2_table(4) := 'E1D00795848EBDF73ABDCFD776F7FFFFA50DC62102A36008672F76DE9BB970F43111029E0854703A4956AE20CAA8A6C9B2044EA7822A389FA09D05A00232AA0224838CD4734310B20419016464FE171D8747003F1A83982508060279DE491591AC8E1B0A';
wwv_flow_api.g_varchar2_table(5) := 'A3A68B485AA650432181A09A412844703BED3636EAF7F71D22C02C4185881018A968F1A4B88148F376ABED8E9ACD9E47884A1C90B478150C44443A4339260C6AB41E1F1BFE57F3A418281D214EA5273F0C62B4DB2616D2848E507E821A6962D2E974BA6E';
wwv_flow_api.g_varchar2_table(6) := '8220020B81941431E9F5CC6EB7E1A60805B111469298361A75DFC18C97240C46024971C233CD918F90D3685884880E7609B1126AE2FC5E5858C00686F689748D6124E84488E8ABE80AAA1527C0D55784CC9500B513D3C89110F4040055C089A0C9956340';
wwv_flow_api.g_varchar2_table(7) := '1701478226C987E8EBF32668EC84B3E0412C16A789756FC683589BF334112D419C0873FA25E14F4D7E0436D2846FE1071A6B1EC4DCC4597E92F0ED7A4898B3309795F09C39AE6E868DFC38E159754C60A3D1EB76BB33566256DF6712C3A30411A8C14E4C';
wwv_flow_api.g_varchar2_table(8) := '47D4C0799470ED1125B0C13E8A51CA20846B59A398518048180E215CDBC604C109B22E4E502324D698881BEC84450C8A4CF6843F4B1A05888461F921418C882F4A500337F5A383766E1FF145083B342264460F5A6A90E6ACC4DAA60611288116C786CB4A';
wwv_flow_api.g_varchar2_table(9) := 'B83631F6C822B90CBA7B7FCE65A5DD238BF462EE4EB0E1F0201C3C10DB43690279139B136147424450830BB1B0A7444813C89FF121663E4A12D4F07910FE7F771F553EF14D7C136A5E426526C4BC84C84A5441EEAA8C84949F90D808155C90CA404022E4';
wwv_flow_api.g_varchar2_table(10) := '37606E827EE9BD305187E7888A26C7920053921C4BAB4444550425255609A18312D343A20A4AAD8A09B15C4244400725A703A56C42015AD984068CB20903A09287A12180A054A620414C20A8942728F0B046554A42E4CAF14A5B8DA7319C90A2568D9775';
wwv_flow_api.g_varchar2_table(11) := 'BDD085CB0041BFFCAA57BBC8106A28836036A8C0425C72C668888D80F909C8482039AF207FDF991720BE896FC2BB337910E6DD49C25B0E3A3C88EEE0D98B1354E8F3213A83801849C2791BF6033E4410049B799A70B6C3E12068F2201E83E0E363384F12';
wwv_flow_api.g_varchar2_table(12) := '93D5C3B03F0882F7D7E57269B11293EB3F7FEF7641487CF4A77162F4327E180EFB980F6BB312D7E18B0C08F1E347FD98A8FF7A19FF24C3E0476083128F6F94087811D8F8B8FF245ADBB7B797F1F88118B80E3B11BD4FD22D21BA4FABED6118D8181422C2';
wwv_flow_api.g_varchar2_table(13) := 'A98819CD63E2606064D06527C84C45464008D45A916160638FF48B10641887B0400854C7C4C1089121337143662232EAF4A0B5881122A1528820C680089440D3CDC1D8D763256EA3C9C6C838B145E2EC8D5F4F37B85B8795706E6FAEAFAFDF8621F2324F';
wwv_flow_api.g_varchar2_table(14) := '2D83CF5B8C34782C83AD70204B27BD987BD7ABED960BD1C393F51ADF22A1C68A0F31FEF97A6A8BA4B532F910F7A7EF40BA160F62D4FEBFDDAAE972CEF402A390D41ACA485784A213A5C073404DE2F15948F08C20F0F9B8E508700930FF140C81D7115541';
wwv_flow_api.g_varchar2_table(15) := 'A4F6B3130A7FF5477483A32021C77FDBB8D83C6DB071377C7827022CFEA55848FCD8D5FE8D8DE678FC9EFCB1ABC04AE8E0B31A35F0F571E7A54E4D9D8D80427C938518BF9FF0185284005908288134D1593E6F36769A0012BC9CA8518112BDF7D7DBDD72';
wwv_flow_api.g_varchar2_table(16) := '39A104356A971186AE508012E69FDD9DBFF8F3FE3EA5044DD18DD384A18A7936BC16FFDC347DFCE766779F6BB749548D4F42CBBB58CF5AFE9E6AFB79F7FD3442A8203301B2EEFBA921A1315F73A47CCF048600F2A4B3EEFB09105C817C5D2500A8E47D22';
wwv_flow_api.g_varchar2_table(17) := '9041CE641D52C0D084DCCFFB17EA19E02C7345FE160000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11539383059044104 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't3controls.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000000000E2E2E20303032323232020200101013C3C3C7070706767673737370707071313136868687171715353531515157E7E7E9999996E6E6E1717170A0A0A737373515151474747B1B1B1AEAEAEA9A9A98383831E1E1E';
wwv_flow_api.g_varchar2_table(2) := '0808087575754E4E4E050505303030ACACAC818181111111555555777777383838272727B3B3B3B0B0B04848483131312C2C2C0E0E0E252525B7B7B74141413A3A3A4C4C4C0C0C0C8080806060602121211818186A6A6AD1D1D1D3D3D3C1C1C1D5D5D5B9';
wwv_flow_api.g_varchar2_table(3) := 'B9B95858581A1A1A1C1C1C1010104545455757575C5C5C8A8A8A6363635E5E5EA3A3A39E9E9E9A9A9AA5A5A5A0A0A06161612A2A2AA1A1A1A7A7A72828283535359C9C9C5A5A5ACACACABEBEBEB5B5B5CECECED0D0D03E3E3E9191919797975050507C7C';
wwv_flow_api.g_varchar2_table(4) := '7C9393938E8E8E898989909090959595C3C3C3C5C5C5C7C7C7BCBCBC2E2E2E333333858585404040878787BABABA4A4A4ACCCCCC8C8C8CC9C9C97A7A7A797979434343C0C0C06C6C6CAAAAAA656565D7D7D700000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11540080687045236 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't3loading.gif'
 ,p_mime_type => 'image/gif'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000003200000062080600000012B180460000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000003C34944415478DAEC9AC16EDB300C404547E9760AB0F617761FB0EF';
wwv_flow_api.g_varchar2_table(2) := 'C87DBDF5BA4FDAB5B7EDDEDFD8BE60BF900CD8696B6C695161171A434A942379992A0284950491F44C52A62883B5560180CA2CB10E6DCEC11C832E3C6160002037A0CE3079C8046ED1EFB614080861A46036020129403A110202DFC14C9069D296810009';
wwv_flow_api.g_varchar2_table(3) := '8C9E0101C2B61402B781684761F44C88984A02DA0654111609C26821843FC1CEFBDCA12B0544816035E83AB521E082229090053A4F81688760420066FCFFD4A6029D85D189EE344D7AC5B4E7804C3A785698C448DD4C27C4863FE915A11C0C078221BAF1';
wwv_flow_api.g_varchar2_table(4) := '3AA0B18D245674E479805D6982D0E88A81A6FF29E279E0BBD3E0417404BC25ACE3670756EA5A80AC314DFE2FDD6EB76FEEEFEF3FCD492DEEEEEE3E3E3C3CFC3836FBC022117DB6004A1AB9C0D608623DAADEED769F379BCD5BADF5660E48DFF73F8FF2FD';
wwv_flow_api.g_varchar2_table(5) := 'E6E6E67684398CDA8F3A8C578356B5E7A5FA89C10301C6A57C4BAC7D7510D7D7D7EF7364B0FBFDFEDB087340DA7B2E8861460EFBECC7B1651707B8CE09E1C4F5E5FA24E2AE933C703B417288037DE562C2B953EE4D8CEBD3F51D5809D9C414BB16E55653';
wwv_flow_api.g_varchar2_table(6) := '5C5C4D7ABC735F725A8370B10FC7E6A3A77EBC9CC40AE55A8A587E29AB9416E97329EA5A1059C54A4B17890DE0402031DF2A2D29193528C1DDE592C6252C9274033BE11675496BA48C09A11839B772B244394914ECFFA5CC01B10BCCCB9E0362231DDB85';
wwv_flow_api.g_varchar2_table(7) := '2052C6B4528B70FBEBD262224509D62236B1DAB1A43570C9889C6717E824B4C75EC22226006353823DB4BF2E2D031A33EA0D5D626C3C81B8EDA9DBD9E59EBDEBD3F5CD65B921182A8D574CB1C1DF1D1649E5510A4FED120D51F722D3F8506C0C9EF66E5B';
wwv_flow_api.g_varchar2_table(8) := 'EA06CE0C718BB6B6432456EA2E3E28A6C67BB25F2F580EC24A59C6E0D58B0389ED0E4B14E806EFCE0F4CE5C470EE459D215A66602A2B3D59CDCE2C990E84050C530252D2DA2F556B35C48210839853C436C4F2AB224F7712245430C6D571FF3820C7B182';
wwv_flow_api.g_varchar2_table(9) := '95B892F45821740E81ADD12190DC073D4A986F054FACB8434AE34D94FA2EC7D19BD8121290989B5955E63054A54248403818FC9D52E71D4F73131641484128370B1D52CE7D6140FADB59208A81508CCBE5D8A7177B85831A2076900F89935BF4A51AC9C0';
wwv_flow_api.g_varchar2_table(10) := 'B1F748B26F979F72AD975AD7BA4859BA9E5B4C74036920E540560DE4C240742D20EB5A40AE6A0179D5402E0CE47515B9D66EB7FB5A0588AD248F7FD1E7EC0DA481349006D2401A480369200DA481349006D2401A4803292F3AE77B89FF52DC21CFBB2A2C';
wwv_flow_api.g_varchar2_table(11) := '72D45FB580FC6E201706F2580BC8A11690BE1690A1815C90AC54256F3E54055285FC11600099D96EB6044F96220000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11540775511047604 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4border1.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000320000000108060000009CD1FDB20000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000004C4944415478DAB4C6DB0980400C44D1597C7E279D58928559929D';
wwv_flow_api.g_varchar2_table(2) := '24DFEB8B3842041BF0C2815B22028501F86A524B1DF534A4D1CC161199F043EEBEAAEACCADB4A59D0E3AE94AF17ABA051800996F19FFA6CE6F580000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11541472276049070 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4border2.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000190806000000F090447F0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000003B4944415478DA62FE0F044C0C40401AF1EEDDBB7320863E88FB03';
wwv_flow_api.g_varchar2_table(2) := '44FC8413BF40C46F6620C10C2298400423480C6CD17F10978119682D0340800100F83E11DAD6E5713A0000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11542169688050243 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderBottomCenter.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000017B4944415478DAB4964F4AC43014C6F362FD8F4845A4A2880B5D7A';
wwv_flow_api.g_varchar2_table(2) := '0C773D8F9BAECB78062FE101BC457B0517DD155C77F27C91A63CC3CB246D35F0233030DFD7EF6B5E6614222A5A40E8918C38208E8933E28228883BE291786ADBF60D672C2B3A77E148F2D2DE9763C2B8E0A1944E7C6A8ED15A2F4A820103D10800706D12';
wwv_flow_api.g_varchar2_table(3) := 'DC6160D62489556518DBBEEF3FFFC2044329AC495DD71FC3307CA59F479C924BB372449C12E7C425713DCECB43D3349BD439F14D9CD11EB14F1C1227E350E6C4157143DCDBC1ECBAEE7DEE3062A032C3F62D31388AA278A1E97F8D550736091D493F8D7B';
wwv_flow_api.g_varchar2_table(4) := '5F3C9923F329CB32AFAAEA39CFF35B638CD504BB3B4DC9849BF1F7A43D23BE73F8C3FD68654245E0D56778F2409DAE4ACD4CA656B21D4718BCDD083741CC2068221928211537E115C19224A1FBCC899B80F8546D16B956C013865114BCB446104F328955';
wwv_flow_api.g_varchar2_table(5) := '8782280807246A1232F23F5321835413A93AA9465C6BA202062A50E36213490422BFFBB0D44425FCF9F8756B00BBEAFF6D7D0B3000E71323D3EAA8BF120000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11542867100051482 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderBottomLeft.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001784944415478DAB495CB4AC43014869358C71B83282215415CE872';
wwv_flow_api.g_varchar2_table(2) := '5ECF3728FA0CCE43B8999D6FD1F6115C745770A5D226FE296909E1E4E625F0D19469F24DCEC94998CA684DD33C33C636E01EDC80129C833538022B500061E0183675729A3264B55C892B53916FF22542083D503A92E8EAB2249C73151028DF6A7EBA1219';
wwv_flow_api.g_varchar2_table(3) := '10A95FADA4EFFB373C464B245342962C1986E1BDAAAA574792969BD41AA9EBFA119FDF99FAB80217E0149C8043AA46CCFC6992AEEB5E4C01DE826B7009CE4C111E8303B00FF62CC12211B110A1CA9FCAB27CD0AF16A3152EE909D5F25EB46DBB5DB61A76';
wwv_flow_api.g_varchar2_table(4) := '8FDEA6FAA993AC73B0DBED7A4240E5C5B78DA7256DAC1FED7F373A0CCE33B6CBD41C2E9DA80FE2A8B0078F04D22360D48AB4E493905022AAEF86890C97967C05246E8547C343896C09F31417B58BA4E734F6267E4DC45225120D954E3C37371A0B88627D';
wwv_flow_api.g_varchar2_table(5) := '163AB766C92A70E184268B0A6C4911BAD542959C7215CF129178DDB29CC97D129529CA92F0BF982C2899CEFB7F6EDF020C0055B087FA515FFC4F0000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11543564297052777 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderBottomRight.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000190000000408060000007BA194260000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000000364944415478DA62FCFFFF3F032310303030206366286601625620';
wwv_flow_api.g_varchar2_table(2) := '6603627628E678FBF6ED3C2121212306220113031DC0F0B10420C000308407049528EC860000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11544261709053976 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderMiddleLeft.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000190000000408060000007BA194260000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000002D4944415478DA62FC0F040C44024646460D20F50F88FF22E13F48';
wwv_flow_api.g_varchar2_table(2) := 'F41F34B97F40E3FF3131D0010C1F4B00020C008D50140553B6B0B30000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11544991889055107 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderMiddleRight.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000000400000019080600000016B98F3B0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000003B4944415478DA62FCFFFF3F03326084623860214F8099A0000BBA';
wwv_flow_api.g_varchar2_table(2) := '002BBA001BBA003B41010E14BFBC7DFBF62C8AC07F34EF3231A081412B0010600015860B0107A9792A0000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11545689301056390 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderTopCenter.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001094944415478DAB496510EC2200C86F9A1FA48E2CEE0093CC70EE8';
wwv_flow_api.g_varchar2_table(2) := 'EBDEF4703BC31423092B941544920E16B6FFA32D65C3B66DE6DF8DC205C0685D64905162D23C0D10862A5C1DE268985343501143E51935A424A219AB2112E0C876205202D2976D726F595F828990DACA6D62288C33103586280A3A61AC8648A054D0154C';
wwv_flow_api.g_varchar2_table(3) := '026510BE457978228058CF61F1BD8F0E29F391AE9EB8CDF37C5996E5DE5AF110BC4941A7D0AFEBFAF0DE5F89C86B20A5A3826FD39D2701304DD3EDA89AAD72EBF264AB01254829F93CE92EE42084487DB2862FE3F7A325D5430CCF39DADB8BA7D60BC913';
wwv_flow_api.g_varchar2_table(4) := '5329C2086E6AB6226E2A474A17048DE7D7CF9E482103ABE42E08943033DA939E3F94ACBD041800AC481BD8CAD99F980000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11546386497057644 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderTopLeft.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001734944415478DAB4964D4EC33010853BE6B7FC2A80A0880A81044B';
wwv_flow_api.g_varchar2_table(2) := '96DC2227621F71072EC1263B0E907D720516D945AC4363C6D1B872078F139732D2AB2D379DAFEFC971025AEBC97F1790DCDA28D598300035B2B9DE042406A06321DB034D75C477226437009146694D844C038031F320C8428E0380210D822CE48C41B83A';
wwv_flow_api.g_varchar2_table(3) := '36DAF92400FC05990900B7399F77239CAD406E0310AB8530F7395B0159C8A307C2015C128C6F8C25E4C9597463E18DBFD9B808C4B774D343AAAA7AB30B4A290D00DA8C4DD37C6659F691E779438DB9B833DF86E821E643ACB66DBFCAB27CA548EF5173D4';
wwv_flow_api.g_varchar2_table(4) := '15EA1C758A3A42EDD30D6D4E8E2D3AA6C08D2B08B155D7F53B81EE5037A84B5442F7D8016A0FB5C320100531458E1E68375EA32EC8CD2173A35C375110135D9AA6CF4E6CAE9BA9145914C45451142F8E9B199D162781C87A888A7900254932779A28963F';
wwv_flow_api.g_varchar2_table(5) := '48BF8B82745D074273083CCEE320681D3CCD5D80EF1D626D2712E8EF7179DE7260E09AB52083FFDA573F020C00D48DB1DF250578C70000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11547083694058905 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4borderTopRight.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFF4D4D4DFBFBFBE2E2E2E4E4E4FCFCFCCECECEA6A6A6ADADADD2D2D2F8F8F8EEEEEEABABABA4A4A4BCBCBCEDEDED9B9B9B868686A7A7A7EBEBEBF5F5F5A3A3A3BDBDBDC6C6C6727272757575797979969696E6E6E6';
wwv_flow_api.g_varchar2_table(2) := 'F7F7F7A2A2A2C0C0C0F9F9F9D8D8D8767676989898F0F0F0BBBBBBA0A0A0D1D1D1DFDFDF717171747474C4C4C4D6D6D6DBDBDBF2F2F2E0E0E06E6E6ECACACAD0D0D0C2C2C2F4F4F4999999B2B2B2E3E3E3EAEAEAAAAAAA5959595858586666665656566D';
wwv_flow_api.g_varchar2_table(3) := '6D6DB8B8B8E9E9E9E7E7E7F1F1F1C7C7C7B9B9B9B5B5B5919191AFAFAFB4B4B47D7D7D8181818484847C7C7C808080B1B1B1DCDCDC7F7F7F7A7A7ADDDDDDD4D4D4838383B6B6B65F5F5F6868686F6F6F5C5C5C5A5A5ACDCDCD8B8B8B878787BFBFBF9C9C';
wwv_flow_api.g_varchar2_table(4) := '9C8A8A8A8E8E8E9292928D8D8D8888886464646363636161616A6A6AD9D9D9D5D5D5959595CBCBCB9494946B6B6BC3C3C35D5D5D8F8F8F6060609D9D9D9F9F9FC9C9C9676767A8A8A8787878AEAEAE55555500000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11547781321060074 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't4loading.gif'
 ,p_mime_type => 'image/gif'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000010000004B080300000086081DB100000033504C54455252524747474F4F4F4141414B4B4B5050503A3A3A6060608A8A8A333333D2D2D25A5A5A515151F2F2F2898989FFFFFFE6E5E57774AF770000002B';
wwv_flow_api.g_varchar2_table(2) := '49444154785EA5C1850D80401000B09E3C6EFB4FCB0C84D462C661482D94FB93D3E6F969B79A94D0D270BD188803D257F447F70000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11548478518061336 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't5border.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000E10000004B0803000000B1EA10C00000018F504C54454F4F4FDEDEDEDBDBDBD2D2D2BBBABAB9B8B8EAEAEA9999999292925A5A5AD4D4D4E3E3E3C5C5C5AFAFAFA0A0A05B5B5BB7B7B73D3D3DBBBBBBC2C2';
wwv_flow_api.g_varchar2_table(2) := 'C2ACACAC626161AAAAAAB9B9B95B5A5A5E5D5D979797C4C4C49B9A9ABAB9B98D8D8D7C7C7CF2F2F22B2B2B2D2D2D2C2C2C4D4D4D2E2E2E303030CDCDCD393939ECEBEBE5E5E52F2F2FEAE9E92A2A2A4C4C4C434343383838323232363636D9D9D93A3A3A';
wwv_flow_api.g_varchar2_table(3) := 'D8D8D8CCCCCC4B4B4BC0C0C0424242E8E7E74747473131314A4A4A414141EFEEEE373737484848454545515151F1F1F13B3B3B3C3C3C333333494949E9E9E9464646505050EBEAEA5E5E5EEDEDED606060A8A8A8EFEFEF3535358A8A8AE7E6E644444482';
wwv_flow_api.g_varchar2_table(4) := '82825D5D5DE9E8E84E4E4E7575754040403E3E3EA7A7A7EEEDEDBEBEBE5C5C5C525252898989CECECEECECEC535353F6F6F6F0F0F07676765F5F5FE6E5E57878789F9F9F6A6A6AA6A6A6D0D0D08E8E8ECACACAB3B3B3F8F8F8838383ADADADF3F3F33F3F';
wwv_flow_api.g_varchar2_table(5) := '3F343434ABABABBFBFBFCFCFCF747474696969818181F9F9F9F4F3F3686868CFCECEFFFFFFA2A2A211BB09BD0000061D49444154785EC4D7658FE33C1000E0FC144318CACCCCCB8CC7CCCCF7E20FBFB19B6DE26E3655BB9BBBF9504BEE58F2237B1C5BDA';
wwv_flow_api.g_varchar2_table(6) := '593AFE7DFA076367E34E7B2CE5CB35EDBFD078D3CFD4CA7969DCBE2BEDBCD8582E44E1AE31BC04181A4100DBF0C6D862FA6E20661DB1A8CFDA55853064B91084871D13CD534A28DB2905CCD7747B4B9D345AF720BBF0C76100D0FEEB168B877FBB6DFD66';
wwv_flow_api.g_varchar2_table(7) := '84EDE0B84A68A097DB687E7A8768BB80EC79A029A5724064C05CEA1888BEF4B7687259687CC494527CEB9DDBA2EB0A396E7C55CC9C82F01CED3B4E80D0715E338208C4B80144066C600788FEF49FE83C404809211484BCBDB690E9A4B0E04C4158DA320F';
wwv_flow_api.g_varchar2_table(8) := '28C501428CE90F73CB575D1300524A74AD6377349DC0A8EFC8F6A71F985BA54B42A2280A01216FAF29E4BE23598EB1C88B11E321CB8004A22784B9268842688090427F3BE7AB2E239BC2D0A96434A46514188453D98990DECA7586910A992F561D34CBC1';
wwv_flow_api.g_varchar2_table(9) := 'D16C0EAA31991167C2FB68932896652988C7BABB6D7910D69F3843DEE9095B9342B6DADBE8A93086C286F5969CA7D333743F322107C6AACDD15EBC580B8C627C6FD4CC037126AC9B8F01A8AAAAF5606DEDE0F6B169F3CDF8CFED83B5B507BC5F21FB5E75';
wwv_flow_api.g_varchar2_table(10) := '41F52588A55658A8164940457A4237FD31AACF0B2D5768DD8050AE963F848DF8526CB94410B203BFCD80D309B35DF7D560932A3814DC2E4421ACBA3CA26E55921020D419D0135EA4B7CD47A568847C099BFF870F795E6B0D62AEF010151A9449D8843911';
wwv_flow_api.g_varchar2_table(11) := '17A642CCBBDD7EBE19776744AD5B49F6FBFD64A5AB01D027F4D20B20F7848A2B546E42285747AFC285F74EE3E5AA3C151A690713058030DFA4282453F8B49F60C7AB451B3D7185CF902D1C4CBEF4AC1191109630FE2D5CA8654E5A55599AAD21504012BC';
wwv_flow_api.g_varchar2_table(12) := '864916016BA8F23FD4F935F4D2610D23DAA547F972F1DE0261E2746F1003E1DD8B3A9CD51BABC38258871C2ED6A196999D34BA26D6A19BDE4E475687D2517E545B20CCA57A7156882074CF5220FACED2897096565400BE17CE521DE8D3B0145D3C4B797A';
wwv_flow_api.g_varchar2_table(13) := '8467293B68AAAD9345C2ED5EB119634342BE8775C483F7EB9BC2F7304114E8EE3E811F58F484FF7BC8D3C96604DF4341F8693921BFD3E84AC89D46F35D528C740313085D439A4E2070233D77A761E9110BB505C2CF5D41187A2FA581F7520A2B67C36A52';
wwv_flow_api.g_varchar2_table(14) := '18758C6C7F7AF0BD14E420E4ED6F15AEF6B618FBDF1678EE6DB1BFD2DB227AA1F83E0C7DF00151E2C0A79C18C1FB301221C470A5377E76A5377EE4C25FECD8CF4B02411407F0B49A5D7656098A2E1DBE730B413A459151D22F22925AC9835D824208BA45';
wwv_flow_api.g_varchar2_table(15) := '03758CFCC76B67B7DE8E8D0312F216F37B11610E7E90376FDE2321D39E8641C890FF289C0BE7C2F94DD33F158E6E219DDD42FC740B69770BE1EE16C34A9AE17BFED966EAF8B176747CBDF9BBE38B5057F38E5FD50911E9F8481A43A4A9BCE49F4CAFB61A';
wwv_flow_api.g_varchar2_table(16) := 'E010022B866001819468808021D2F19ABA2BA3B0D51501C6085117D6CB3B051A62D3005362B3783C10DD56E984E6B78E1522AC16A727A99111550684961DEBF80D1D9F9A704379B33A221CA818268E8D7066888B13F0372C404E2D4CC03089D560CAC2B5';
wwv_flow_api.g_varchar2_table(17) := '456FD66D615B24C812065F4984D9088B7AFA254416AAAEACFA28A622478448547BBAC2A5276F9649682EFC105622B3898A40A1EA22A203484284F2B15512615F451A5E21517A1691800E217444725E6143025E21A5B8110E00D03DEA1002B231F3FF616F';
wwv_flow_api.g_varchar2_table(18) := 'B6EB5030D7A1FF2EEDCCC85DFAF77EA8E90A72F44356E1E46F9AFEA46F1A6621C3BB9441C8305BB009FDF361A49A13CF87FC42F6199F4158E63DCD673B77EC12310CC571BCC3093A950A7277A24E0776BA402994525A722789C50E42254849879E9B6E4E';
wwv_flow_api.g_varchar2_table(19) := 'E97CFEE3F60959AA2483C3F1E0FDFE830FE9F8BEFDA7F0244321242109494842129290842424210949A87DC2562215DAFB529F70994806C2034A613309AB4BB7F096F7AA462CDCEED8B95B78171B7BE78D51186CEABDBE7101AFB9CCE1561FADB0CB0AD6';
wwv_flow_api.g_varchar2_table(20) := 'A757EFAF43B8BA982D0C8775CFA586DE02A9F0E7332D0B66649C8C8FBF37B63C965A4D4F8858180051552612229D4F081999CA02510A7D6957CED41EC2AEAE79C02B74E779BBBACC20CE832744299C2796DB3FFACACE06963885D6D8381B590022168211';
wwv_flow_api.g_varchar2_table(21) := 'E6EC9C910AEDDE7C43FA4F856FD2C2B9C2643C24B90000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11549175283062809 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't5controls.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFFFF5500FEFBFAFEE3D6FEE6DAFEFCFCFED0BAFEAA80FEB08AFED4C0FEF8F6FEEFE8FEAF88FEA87EFEBFA0FEEEE6FE9F70FE8B52FEAB82FEECE4FEF6F2FEA77CFEC0A2FEC8AEFE7836FE7B3AFE7F40FE9B6AFEE7DC';
wwv_flow_api.g_varchar2_table(2) := 'FEF7F4FEA67AFEC3A6FEFAF8FEDAC8FE7C3CFE9C6CFEF0EAFEBE9EFEA478FED3BEFEE0D2FE7734FE7A38FEC7ACFED8C6FEDCCCFEF3EEFEE2D4FE7430FECCB4FED2BCFEC4A8FEF4F0FE9E6EFEB692FEE4D8FEEBE2FEAE86FE6012FE5F10FE6C24FE5E0EFE';
wwv_flow_api.g_varchar2_table(3) := '732EFEBB9AFEEAE0FEE8DEFEF2ECFECAB0FEBC9CFEB896FE9662FEB38EFEB794FE8346FE874CFE8A50FE8244FE864AFEB490FEDECEFE8448FE8042FEDFD0FED6C2FE884EFEBA98FE661AFE6F28FE7632FE6316FE6214FECFB8FE905AFE8C54FEC2A4FEA0';
wwv_flow_api.g_varchar2_table(4) := '72FE8F58FE935EFE9764FE925CFE8E56FE6B22FE6A20FE681EFE702AFEDBCAFED7C4FE9A68FECEB6FE9866FE722CFEC6AAFE6418FE9460FE671CFEA274FEA376FECBB2FE6E26FEAC84FE7E3EFEB28CFE5C0C00000000000000000000000000000021FF0B';
wwv_flow_api.g_varchar2_table(5) := '4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904090500';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90409050000002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F90409050000002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F90409050000002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90409050000002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90409050000002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90409050000002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F90409050000002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F90409050000002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11549871832064441 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't5loading.gif'
 ,p_mime_type => 'image/gif'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000280000002804030000007ED0A55E00000012504C5445FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF47D7349F0000000574524E53EF801000CF924B9CD50000003E49444154785EEDD3210100201043D121';
wwv_flow_api.g_varchar2_table(2) := 'F0181240828B400210EB5F05CF1600715F3EBD211A9FCAC0A4B4D0150FAAE2064D9F6062A21DAD9DB73D82BDCC05FAB0061ABD2A80320000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 11550569244065657 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 34424480072929450107 + wwv_flow_api.g_id_offset
 ,p_file_name => 't5loading_background.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

prompt  ...data loading
--
--application/deployment/definition
prompt  ...application deployment
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
begin
s := null;
wwv_flow_api.create_install (
  p_id => 3168021535579595 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_include_in_export_yn => 'Y',
  p_deinstall_message=> '');
end;
 
 
end;
/

--application/deployment/install
prompt  ...application install scripts
--
--application/deployment/checks
prompt  ...application deployment checks
--
 
begin
 
null;
 
end;
/

--application/deployment/buildoptions
prompt  ...application deployment build options
--
 
begin
 
null;
 
end;
/

prompt  ...post import process
 
begin
 
wwv_flow_api.post_import_process(p_flow_id => wwv_flow.g_flow_id);
null;
 
end;
/

--application/end_environment
commit;
commit;
begin
execute immediate 'begin sys.dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
set define on
prompt  ...done
