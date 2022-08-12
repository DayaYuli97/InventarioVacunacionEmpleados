/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     09/08/2022 19:27:05                          */
/*==============================================================*/

CREATE DATABASE dbvaccine
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;



/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN (
   ID_ADMIN             CHAR(36)             not null,
   USSER               VARCHAR(15)          null,
   PASS             VARCHAR(100)         null,
   constraint PK_ADMIN primary key (ID_ADMIN)
);

/*==============================================================*/
/* Index: PK_ID_ADMIN                                           */
/*==============================================================*/
create unique index PK_ID_ADMIN on ADMIN (
ID_ADMIN
);

/*==============================================================*/
/* Table: EMPLOYES                                              */
/*==============================================================*/
create table EMPLOYES (
   ID_EMPLOYES          CHAR(36)             not null,
   IDCARD               CHAR(10)             null,
   NAME                 VARCHAR(100)         null,
   LASTNAME             VARCHAR(100)         null,
   MAIL                 VARCHAR(100)         null,
   DATE_BIRTH           TIMESTAMP            null,
   ADDRESS              VARCHAR(100)         null,
   CELLPHONE            VARCHAR(15)          null,
   VACCINE_STATUS       VARCHAR(15)          null,
   USERNAME             VARCHAR(15)          null,
   PASS                  VARCHAR(100)         null,
   STATUS               BOOLEAN          null,
   constraint PK_EMPLOYES primary key (ID_EMPLOYES)
);

/*==============================================================*/
/* Index: PK_ID_EMPLOYES                                        */
/*==============================================================*/
create unique index PK_ID_EMPLOYES on EMPLOYES (
ID_EMPLOYES
);

/*==============================================================*/
/* Table: VACCINE                                               */
/*==============================================================*/
create table VACCINE (
   ID_VACCINE           CHAR(36)             not null,
   ID_EMPLOYES          CHAR(36)             null,
   VACCINE              VARCHAR(50)          null,
   DATE_VACCINE         TIMESTAMP            null,
   DOSE_VACCINE         VARCHAR(2)           null,
   constraint PK_VACCINE primary key (ID_VACCINE)
);

/*==============================================================*/
/* Index: PK_ID_VACCINE                                         */
/*==============================================================*/
create unique index PK_ID_VACCINE on VACCINE (
ID_VACCINE
);

alter table VACCINE
   add constraint FK_VACCINE_REFERENCE_EMPLOYES foreign key (ID_EMPLOYES)
      references EMPLOYES (ID_EMPLOYES)
      on delete restrict on update restrict;

