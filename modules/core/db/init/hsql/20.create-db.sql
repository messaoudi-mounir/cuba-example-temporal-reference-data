-- begin CETRD_ORDER
alter table CETRD_ORDER add constraint FK_CETRD_ORDER_CUSTOMER foreign key (CUSTOMER_ID) references CETRD_CUSTOMER(ID)^
alter table CETRD_ORDER add constraint FK_CETRD_ORDER_PAYMENT_METHOD foreign key (PAYMENT_METHOD_ID) references CETRD_PAYMENT_METHOD(ID)^
alter table CETRD_ORDER add constraint FK_CETRD_ORDER_TAX_RATE foreign key (TAX_RATE_ID) references CETRD_TAX_RATE(ID)^
create index IDX_CETRD_ORDER_PAYMENT_METHOD on CETRD_ORDER (PAYMENT_METHOD_ID)^
create index IDX_CETRD_ORDER_TAX_RATE on CETRD_ORDER (TAX_RATE_ID)^
create index IDX_CETRD_ORDER_CUSTOMER on CETRD_ORDER (CUSTOMER_ID)^
-- end CETRD_ORDER
