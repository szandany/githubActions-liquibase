--liquibase formatted sql

--changeset Bob:1582471835439-1 context:"QA or (TEST and DEV)" labels:Jira-118,Jira-119,feature223,pro
CREATE TABLE SALES (ID BIGINT AUTO_INCREMENT, ITEM VARCHAR(255), QUANTITY NUMBER, AMOUNT FLOAT, CONSTRAINT SALES_PK PRIMARY KEY (ID));
--rollback DROP TABLE SALES;

--changeset SteveZ:1582471835439-2 context:DEV labels:Jira-118,beta
INSERT INTO SALES (ITEM, QUANTITY, AMOUNT) VALUES ('Leather sofa By Michellotti', 4, 5026.63);
--rollback DELETE FROM SALES WHERE ITEM='Leather sofa By Michellotti';

--changeset Dion:1582471835439-3 context:"PROD and PREPROD" labels:Jira-118,pro
INSERT INTO SALES (ITEM, QUANTITY, AMOUNT) VALUES ('Round coffee table By Michellotti', 1, 800.23);
--rollback DELETE FROM SALES WHERE ITEM='Round coffee table By Michellotti';
