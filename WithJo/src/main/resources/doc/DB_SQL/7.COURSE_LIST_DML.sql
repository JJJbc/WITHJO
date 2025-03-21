--COURSE_LIST DML

DROP TABLE COURSE_LIST;

CREATE TABLE COURSE_LIST(
     COURSE_NO NUMBER(10)
    ,CATEGORY_NO NUMBER(10)
    ,COURSE_NAME VARCHAR2(200) NOT NULL
    ,COURSE_TEACHER VARCHAR2(100) NOT NULL
    ,COURSE_COST NUMBER(20) NOT NULL
    ,COURSE_CURRENT_PEOPLE NUMBER(20) NOT NULL
    ,COURSE_MAX_PEOPLE NUMBER(20) NOT NULL   
    ,COURSE_AGE_LIMIT NUMBER(4) NOT NULL
    ,COURSE_START_DATE DATE NOT NULL
    ,COURSE_END_DATE DATE NOT NULL
    ,COURSE_START_TIME VARCHAR2(100) NOT NULL
    ,COURSE_END_TIME VARCHAR2(100) NOT NULL
    ,COURSE_REC_START DATE NOT NULL
    ,COURSE_REC_END DATE NOT NULL
    ,COURSE_INFO VARCHAR2(4000) 
    ,COURSE_MAIN_IMAGE VARCHAR2(4000) 
    ,CONSTRAINT COURSE_NO_PK PRIMARY KEY (COURSE_NO)
    ,CONSTRAINT C_CATEGORY_NO_FK FOREIGN KEY (CATEGORY_NO) REFERENCES CATEGORY(CATEGORY_NO)
);

DROP SEQUENCE COURSE_NO_SEQ;

CREATE SEQUENCE COURSE_NO_SEQ
INCREMENT BY 1
START WITH 1;

ALTER TABLE COURSE_LIST ADD COURSE_HIDE NUMBER(5) DEFAULT 0;

INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '수영 오전 유아반', '김석호', 25000, 0, 20, 9, TO_DATE('2025-01-02 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2025-03-31 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '10:00:00', '12:00:00'
    , TO_DATE('2024-12-15 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-12-20 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '수영 오전 유아반', '김석호', 25000, 0, 20, 9, TO_DATE('2025-01-02 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2025-03-31 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '10:00:00', '12:00:00'
    , TO_DATE('2024-12-15 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-12-20 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 오후 성인반', '김곽춘', 35000, 0, 20, 20, TO_DATE('2024-12-01 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2025-01-31 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '14:00:00', '16:00:00'
    , TO_DATE('2024-11-18 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-21 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);

INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 종일 성인반', '김곽춘', 70000, 0, 20, 20, TO_DATE('2024-11-01 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-31 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-20 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-10-25 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    
INSERT INTO COURSE_LIST(COURSE_NO, CATEGORY_NO, COURSE_NAME, COURSE_TEACHER, COURSE_COST, COURSE_CURRENT_PEOPLE, COURSE_MAX_PEOPLE,
			COURSE_AGE_LIMIT, COURSE_START_DATE, COURSE_END_DATE, COURSE_START_TIME, COURSE_END_TIME, COURSE_REC_START, COURSE_REC_END,
			COURSE_INFO, COURSE_MAIN_IMAGE)
VALUES(COURSE_NO_SEQ.NEXTVAL, 2, '테니스 성인반', '김곽춘', 500000, 0, 20, 20, TO_DATE('2024-11-21 09:00:00', 'YYYY-MM-DD HH24:mi:ss')
    , TO_DATE('2024-12-20 09:00:00', 'YYYY-MM-DD HH24:mi:ss'), '16:00:00', '18:00:00'
    , TO_DATE('2024-10-27 10:00:00', 'YYYY-MM-DD HH24:mi:ss'), TO_DATE('2024-11-04 18:00:00', 'YYYY-MM-DD HH24:mi:ss'), null, null);
    

    

SELECT *
FROM COURSE_LIST;

COMMIT;