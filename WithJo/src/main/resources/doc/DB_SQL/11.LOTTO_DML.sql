
---------------------------------------------------------
DROP TABLE LOTTO;

CREATE TABLE LOTTO(
     LOTTO_NO NUMBER(10) 
    ,LOTTO_ROUND NUMBER(10) 
    ,LOTTO_ROUND_LIMIT NUMBER(10)
    ,LOTTO_MODE NUMBER(10)
    ,MEMBER_NO NUMBER(10)
    ,LOTTO_WINNING NUMBER(10)
    ,LOTTO_1ST NUMBER(10)
    ,LOTTO_2ND NUMBER(10)
    ,LOTTO_3RD NUMBER(10)
    ,LOTTO_SEL_NO VARCHAR2(100) 
    ,LOTTO_START_DATE VARCHAR2(50)
    ,LOTTO_END_DATE VARCHAR2(50)
    ,LOTTO_CREDATE DATE
    ,CONSTRAINT LOTTO_NO_PK PRIMARY KEY (LOTTO_NO)
);

DROP SEQUENCE LOTTO_NO_SEQ;

CREATE SEQUENCE LOTTO_NO_SEQ
INCREMENT BY 1
START WITH 1; 

  
select *
from lotto;
  

  
commit;
----------------------------------------------------------------------------

  