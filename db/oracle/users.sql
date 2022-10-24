create user cr_cashflow identified by qwerty;
grant create session to cr_cashflow;



create user cr_model identified by qwerty;
grant create session to cr_model;

create user migration identified by qwerty;
grant create session to migration;

grant create table to cr_cashflow;

alter user data_owner quota unlimited on users;


