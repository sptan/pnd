CREATE SCHEMA pnd AUTHORIZATION pnd;

CREATE TABLE pnd_file (
  id bigint NOT NULL generated by default as identity,
  name varchar(255) NOT NULL,
  parent_id bigint NOT NULL DEFAULT 0,
  type varchar(45) NOT NULL,
  gmt_modified timestamp NOT NULL DEFAULT '2019-01-01 00:00:00',
  gmt_create timestamp NOT NULL DEFAULT '2019-01-01 00:00:00',
  resource_id bigint DEFAULT NULL,
  constraint pnd_file_id_key PRIMARY KEY (id));

CREATE INDEX index2 ON pnd_file(parent_id, name);

CREATE TABLE pnd_resource (
  id bigint NOT NULL generated by default as identity,
  size bigint DEFAULT 0,
  path varchar(255) DEFAULT '',
  uuid varchar(255) DEFAULT '',
  gmt_modified timestamp NOT NULL DEFAULT '2019-01-01 00:00:00',
  gmt_create timestamp NOT NULL DEFAULT '2019-01-01 00:00:00',
  status varchar(45) NOT NULL,
  md5 varchar(32) NOT NULL,
  link int DEFAULT 0,
  constraint pnd_resource_id_key PRIMARY KEY (id));