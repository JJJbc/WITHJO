--ADMIN NOTICE DML

DROP TABLE NOTICE;

CREATE TABLE NOTICE(
     NOTICE_NO NUMBER(10)
    ,MEMBER_NO NUMBER(10)
    ,NOTICE_TITLE VARCHAR2(200)
    ,NOTICE_CONTENT VARCHAR2(1000)
    ,NOTICE_IMG VARCHAR2(2000)
    ,NOTICE_CREDATE DATE DEFAULT SYSDATE
    ,NOTICE_UPDATE DATE DEFAULT SYSDATE
    ,CONSTRAINT NOTICE_NO_PK PRIMARY KEY (NOTICE_NO)
    ,CONSTRAINT N_MEMBER_NO_FK FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER(MEMBER_NO)
);

DROP SEQUENCE NOTICE_NO_SEQ;

CREATE SEQUENCE NOTICE_NO_SEQ
INCREMENT BY 1
START WITH 1;

INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '어서오세요 함께해JO 입니다.', '여러분과 함께 성장하는 함께해JO가 되겠습니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '수강신청안내', '해당연령과 날짜, 시간대를 유의하여 신청해주세요!');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '로또 이벤트 안내', '로또이벤트는 회차당 5번 가능합니다. 감사합니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '게시판 이벤트 안내', '매 회차마다 지정날짜 안에 작성하신 게시글중 무작위로 회차의 추첨인원분들께 포인트를 드립니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '회원가입 안내', '회원가입 해주셔서 감사합니다. 여러분의 건강한 취미할동을 돕겠습니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '어서오세요 함께해JO 입니다.', '여러분과 함께 성장하는 함께해JO가 되겠습니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '수강신청안내', '해당연령과 날짜, 시간대를 유의하여 신청해주세요!');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '로또 이벤트 안내', '로또이벤트는 회차당 5번 가능합니다. 감사합니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '게시판 이벤트 안내', '매 회차마다 지정날짜 안에 작성하신 게시글중 무작위로 회차의 추첨인원분들께 포인트를 드립니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '회원가입 안내', '회원가입 해주셔서 감사합니다. 여러분의 건강한 취미할동을 돕겠습니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '어서오세요 함께해JO 입니다.', '여러분과 함께 성장하는 함께해JO가 되겠습니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '수강신청안내', '해당연령과 날짜, 시간대를 유의하여 신청해주세요!');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '로또 이벤트 안내', '로또이벤트는 회차당 5번 가능합니다. 감사합니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '게시판 이벤트 안내', '매 회차마다 지정날짜 안에 작성하신 게시글중 무작위로 회차의 추첨인원분들께 포인트를 드립니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '회원가입 안내', '회원가입 해주셔서 감사합니다. 여러분의 건강한 취미할동을 돕겠습니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '어서오세요 함께해JO 입니다.', '여러분과 함께 성장하는 함께해JO가 되겠습니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '수강신청안내', '해당연령과 날짜, 시간대를 유의하여 신청해주세요!');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '로또 이벤트 안내', '로또이벤트는 회차당 5번 가능합니다. 감사합니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '게시판 이벤트 안내', '매 회차마다 지정날짜 안에 작성하신 게시글중 무작위로 회차의 추첨인원분들께 포인트를 드립니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '회원가입 안내', '회원가입 해주셔서 감사합니다. 여러분의 건강한 취미할동을 돕겠습니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '어서오세요 함께해JO 입니다.', '여러분과 함께 성장하는 함께해JO가 되겠습니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '수강신청안내', '해당연령과 날짜, 시간대를 유의하여 신청해주세요!');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '로또 이벤트 안내', '로또이벤트는 회차당 5번 가능합니다. 감사합니다.');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '게시판 이벤트 안내', '매 회차마다 지정날짜 안에 작성하신 게시글중 무작위로 회차의 추첨인원분들께 포인트를 드립니다');
INSERT INTO NOTICE(NOTICE_NO, MEMBER_NO, NOTICE_TITLE, NOTICE_CONTENT)
VALUES(NOTICE_NO_SEQ.NEXTVAL, 1, '회원가입 안내', '회원가입 해주셔서 감사합니다. 여러분의 건강한 취미할동을 돕겠습니다.');

SELECT *
FROM NOTICE;

COMMIT;