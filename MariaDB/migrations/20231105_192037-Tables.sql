USE firebnb;

CREATE TABLE users (
  id integer PRIMARY KEY,
  full_name varchar(255) NOT NULL,
  password varchar(127) NOT NULL,
  email varchar(255) NOT NULL,
  created_at timestamp NOT NULL,
  updated_at timestamp NOT NULL
);

CREATE TABLE reservations (
  id integer PRIMARY KEY,
  start_date datetime NOT NULL,
  end_date datetime NOT NULL,
  user_id integer NOT NULL,
  bnb_id integer NOT NULL,
  created_at timestamp NOT NULL,
  updated_at timestamp NOT NULL
);

ALTER TABLE reservations ADD FOREIGN KEY (user_id) REFERENCES users (id);