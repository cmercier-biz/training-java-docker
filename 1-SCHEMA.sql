drop schema if exists `computer-database-db`;
  create schema if not exists `computer-database-db`;
  use `computer-database-db`;

  drop table if exists computer;
  drop table if exists company;

  create table company (
    id                        bigint not null auto_increment,
    name                      varchar(255),
    constraint pk_company primary key (id))
  ;

  create table computer (
    id                        bigint not null auto_increment,
    name                      varchar(255),
    introduced                date NULL,
    discontinued              date NULL,
    company_id                bigint default NULL,
    constraint pk_computer primary key (id))
  ;

  alter table computer add constraint fk_computer_company_1 foreign key (company_id) references company (id) on delete restrict on update restrict;
  create index ix_computer_company_id on computer (company_id);
  /*create index ix_company_name on company (name(20))*/
  /*create index ix_computer_company_id_name on computer (company_id, name);*/
