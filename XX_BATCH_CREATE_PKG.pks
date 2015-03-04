--------------------------------------------------------
--  DDL for Package XX_BATCH_CREATE_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "XX_BATCH_CREATE_PKG" 
IS
PROCEDURE p_create
  (
    errbuf OUT VARCHAR2,
    retcode OUT VARCHAR2,
    P_BATCH_TOTAL IN NUMBER ,
    P_FILE_PATH   IN VARCHAR2
  )
  ;
END XX_BATCH_CREATE_PKG;
