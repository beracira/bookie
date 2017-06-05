pragma foreign_keys=on;

drop table if exists user;
create table user (
  user_id integer primary key autoincrement,
  username text not null,
  email text not null,
  pw_hash text not null
);

drop table if exists follower;
create table follower (
  who_id integer,
  whom_id integer
);

drop table if exists thread;
create table thread (
  thread_id integer primary key autoincrement,
  author_id integer not null,
  text text not null,
  pub_date integer
);

drop table if exists post;
create table post (
  post_id integer primary key autoincrement,
  thread_id integer not null,
  author_id integer not null,
  text text not null,
  pub_date integer,
  foreign key (thread_id) references thread(thread_id)
);
