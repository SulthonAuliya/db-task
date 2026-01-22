\c reporting

create table if not exists public.product_events (
  id SERIAL PRIMARY KEY,
  evt_type character varying(255),
  user_id character varying(100),
  product_id character varying(100),
  location_id character varying(100),
  location character varying(255),
  evt_date timestamp,
  transaction_id character varying(100),
  platform character varying(50),
  meta character varying(1024),
  created timestamp default current_timestamp,
  last_modified timestamp default current_timestamp
);

create table if not exists public.user_events (
  id SERIAL PRIMARY KEY,
  evt_type character varying(255),
  user_id character varying(100),
  evt_date timestamp,
  platform character varying(50),
  meta character varying(1024),
  created timestamp default current_timestamp,
  last_modified timestamp default current_timestamp
);

insert into public.user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '1', '2025-01-02 09:00:00', 'app', null);

insert into public.user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '2', '2025-01-03 11:00:00', 'web', null);

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '3', '2025-01-03 08:20:00', 'web', null);

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '4', '2025-01-06 12:40:00', 'web', null);

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '1', '2025-01-02 09:03:00', 'app', '{"type": "card", "valid_until": "08/24"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '2', '2025-01-03 11:13:00', 'web', '{"type": "card", "valid_until": "02/24"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '3', '2025-01-04 08:24:00', 'web', '{"type": "card", "valid_until": "01/24"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '3', '2025-02-14 08:24:00', 'web', '{"type": "card", "valid_until": "03/26"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '4', '2025-01-06 13:01:00', 'web', '{"type": "card", "valid_until": "01/26"}');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '1', '1', '1', 'LOC A', '2025-07-14 08:24:00', '1', 'app', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '1', '1', '2', 'LOC B', '2025-07-16 10:00:00', '1', 'app', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '1', '2', '2', 'LOC B', '2025-07-17 11:00:00', '2', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '1', '2', '2', 'LOC B', '2025-07-17 12:00:00', '2', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '2', '1', '2', 'LOC B', '2025-07-20 09:00:00', '3', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '2', '1', '2', 'LOC B', '2025-11-21 12:00:00', '3', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '2', '1', '2', 'LOC B', '2025-7-22 09:00:00', '4', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '3', '2', '1', 'LOC A', '2025-7-23 14:00:00', '5', 'app', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '4', '3', '2', 'LOC B', '2025-12-07 09:00:00', '6', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '4', '3', '2', 'LOC B', '2025-12-07 12:00:00', '6', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '4', '4', '2', 'LOC B', '2025-7-09 09:00:00', '7', 'web', '');

