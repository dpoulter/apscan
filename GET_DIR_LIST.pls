create or replace PROCEDURE        "GET_DIR_LIST" (
    p_directory IN VARCHAR2 )
AS
  language java name 'DirList.getList( java.lang.String )';
