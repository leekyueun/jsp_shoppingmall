CREATE TABLE PRODUCT (
    PRODUCT_ID NUMBER(10) NOT NULL,
    NAME VARCHAR2(40),
    PRICE NUMBER(10),
    CATEGORY_ID NUMBER(10) NOT NULL,
    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCT_ID)
);

CREATE TABLE CATEGORY (
    CATEGORY_ID NUMBER(10) NOT NULL,
    NAME VARCHAR2(20),
    CONSTRAINT PK_CATEGORY PRIMARY KEY (CATEGORY_ID)
);

CREATE TABLE SALE (
    SALE_ID NUMBER(10) NOT NULL,
    PRODUCT_ID NUMBER(10) NOT NULL,
    PURCHASE_DATE DATE,
    SALE_PRICE NUMBER(10) NOT NULL,
    AMOUNT NUMBER(5) NOT NULL,
    CONSTRAINT PK_SALE PRIMARY KEY(SALE_ID)
);


insert into product values ( 1, '컴퓨터', 1000000, 1);
insert into product values ( 2, '태블릿PC', 800000, 1);
insert into product values ( 3, '핸드폰', 1200000, 1);
insert into product values ( 4, '헤드셋', 80000, 1);
insert into product values ( 5, '무선 이어폰', 210000, 1);
insert into product values ( 6, '책상', 160000, 2);
insert into product values ( 7, '의자', 90000, 2);
insert into product values ( 8, '소고기', 12000, 3);
insert into product values ( 9, '티셔츠', 58000, 4);

insert into CATEGORY values ( 1, '전자제품');
insert into CATEGORY values ( 2, '가구');
insert into CATEGORY values ( 3, '식품');
insert into CATEGORY values ( 4, '의류');

insert into SALE values (1, 1, '20200101', 1000000, 1);
insert into SALE values (2, 2, '20200101', 1600000, 2);
insert into SALE values (3, 1, '20200101', 2000000, 2);
insert into SALE values (4, 4, '20200102', 140000, 3);
insert into SALE values (5, 5, '20200104', 21000, 1);
insert into SALE values (6, 6, '20200106', 320000, 2);
insert into SALE values (7, 7, '20200111', 360000, 4);
insert into SALE values (8, 8, '20200115', 60000, 5);
insert into SALE values (9, 9, '20200117', 58000, 1);
insert into SALE values (10, 9, '20200120', 580000, 10);
insert into SALE values (11, 2, '20200121', 1600000, 2);
insert into SALE values (12, 1, '20200122', 1000000, 1);
insert into SALE values (13, 4, '20200124', 80000, 1);
insert into SALE values (14, 5, '20200126', 210000, 1);
insert into SALE values (15, 6, '20200129', 160000, 1);

SELECT
    SALE.SALE_ID, PRODUCT.NAME, SALE.PURCHASE_DATE, SALE.SALE_PRICE, SALE.AMOUNT
FROM
    SALE, PRODUCT
WHERE
    SALE.PRODUCT_ID = PRODUCT.PRODUCT_ID