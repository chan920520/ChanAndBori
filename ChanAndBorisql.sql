CREATE TABLE TBL_BOARD(
    BOARD_ID VARCHAR2(30),
    HRANK_BOARD_ID VARCHAR2(30),
    BNO NUMBER(10),
    SEQ NUMBER(5),
    TITLE VARCHAR2(200),
    CONTENT CLOB,
    REGI_USER_ID VARCHAR2(50),
    REGI_DATE DATE,
    MODI_USER_ID VARCHAR2(50), 
    MODI_DATE DATE,    
    VIEW_CNT NUMBER(3),
    CONSTRAINT BOARD_PK PRIMARY KEY (BOARD_ID)
);

CREATE TABLE TBL_USER(
    USER_ID VARCHAR2(30),
    USER_PW VARCHAR2(256),
    USER_NAME VARCHAR2(50),
    USER_EMAIL VARCHAR2(100),
    REGI_USER_ID VARCHAR2(50),
    REGI_DATE DATE,
    MODI_USER_ID VARCHAR2(50), 
    MODI_DATE DATE,
    CONSTRAINT USER_PK PRIMARY KEY (USER_ID)
);

CREATE SEQUENCE 
    SEQ_COMMON 
START WITH 1 
INCREMENT BY 1 
MAXVALUE 10000 
MINVALUE 1 CYCLE;

DROP SEQUENCE SEQ_COMMON;
DELETE FROM TBL_BOARD;
SELECT FUNC_GET_SEQ_30() FROM DUAL;

SELECT * FROM TBL_BOARD;

INSERT INTO TBL_BOARD(BOARD_ID, BNO, TITLE, CONTENT, REGI_USER_ID) VALUES(FUNC_GET_SEQ_30(), SEQ_COMMON.CURRVAL, 'TEST TITLE', 'TEST CONTETN', 'TEST REGI_USER_ID');
ALTER SEQUENCE SEQ_COMMON INCREMENT BY -2;
SELECT SEQ_COMMON.CURRVAL FROM DUAL;
ALTER SEQUENCE SEQ_COMMON INCREMENT BY 1;

INSERT INTO	/* com.chan.persistence.BoardDAO.create */
		TBL_BOARD
				(
					BOARD_ID,
					BNO,				
					TITLE,
					CONTENT,
					REGI_USER_ID,
					REGI_DATE,				
					VIEW_CNT
				)
		VALUES
				(
					FUNC_GET_SEQ_30(),
					(SELECT NVL(MAX(BNO)+1, 1) FROM TBL_BOARD),
					'TEST TITLE',
					'TEST CONTENT',
					'TEST REGI_USER_ID',
					SYSDATE,
					0
				);
                
SELECT NVL(MAX(BNO+1), 1) FROM TBL_BOARD;