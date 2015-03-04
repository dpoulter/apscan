--------------------------------------------------------
--  DDL for Package XX_INV_BATCH_ASS_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "XX_INV_BATCH_ASS_PKG" 
IS
PROCEDURE p_create
  (
    itemtype IN VARCHAR2,
                              itemkey  IN VARCHAR2,
                              actid    IN NUMBER,
                              funcmode IN VARCHAR2,
                              resultout OUT NOCOPY VARCHAR2
  )
  ;
END XX_INV_BATCH_ASS_PKG;
