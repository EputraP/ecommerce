-- DB Generation
CREATE TABLE users (
	user_id serial4 NOT NULL,
	username varchar(50) NULL,
	email varchar(50) NULL,
	password varchar(50) NULL,
	code varchar(10) NULL,
	role varchar(50) NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT users_pkey PRIMARY KEY (user_id)
);



CREATE TABLE carts (
	cart_id serial4 NOT NULL,
	user_id INT NULL,
	product_id INT NULL,
	size_id INT NULL,
	color_id INT NULL,
	amount INT NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	is_transacted INT NULL,
	transacted_id INT NULL,
	CONSTRAINT carts_pkey PRIMARY KEY (cart_id)
);

CREATE TABLE product_payment (
	product_payment_id serial4 NOT NULL,
	product_id INT NULL,
	payment_id INT NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT product_payment_pkey PRIMARY KEY (product_payment_id)
);

CREATE TABLE product_delivery (
	product_delivery_id serial4 NOT NULL,
	product_id INT NULL,
	delivery_id INT NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT product_delivery_pkey PRIMARY KEY (product_delivery_id)
);


CREATE TABLE products (
	product_id serial4 NOT NULL,
	name varchar(50) NULL,
	description varchar(50) NULL,
	img_path varchar(255) NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT products_pkey PRIMARY KEY (product_id)
);

CREATE TABLE variances (
	variance_id serial4 NOT NULL,
	name varchar(50) NULL,
	product_id INT NULL,
	size_id INT NULL,
	color_id INT NULL,
	amount INT NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT variances_pkey PRIMARY KEY (variance_id)
);

CREATE TABLE transacted (
	transacted_id serial4 NOT NULL,
	delivery_id INT NULL,
	payment_id INT NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT transacted_pkey PRIMARY KEY (transacted_id)
);

CREATE TABLE deliveries_method (
	delivery_id serial4 NOT NULL,
	delivery_name varchar(50) NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT delivery_method_pkey PRIMARY KEY (delivery_id)
);

CREATE TABLE payments_method (
	payment_id serial4 NOT NULL,
	payment_name varchar(50) NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT payments_method_pkey PRIMARY KEY (payment_id)
);

CREATE TABLE sizes (
	size_id serial4 NOT NULL,
	size_name varchar(50) NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT sizes_pkey PRIMARY KEY (size_id)
);

CREATE TABLE colors (
	color_id serial4 NOT NULL,
	color_name varchar(50) NULL,
	updated_at timestamp NULL,
	created_at timestamp NOT null default current_date,
	is_active INT NULL,
	CONSTRAINT colors_pkey PRIMARY KEY (color_id)
);

-- Data Generation
select * from users u 
INSERT into users (username , email, "password", role, is_active)
values ('User1', 'User1@gmail.com', 'password123456', 'user', 1),
		('Administrator', 'Administrator@gmail.com', 'password123456', 'admin', 1)


insert into deliveries_method (delivery_name,  is_active)
values ('JNE', 1),('TIKI',1),('SAPX',1),('SATRIA',1),('JNT',1),('POS Indonesia',1)


insert into payments_method (payment_name,  is_active)
values ('GOPAY', 1),('SHOPEEPAY',1),('BNI',1),('BRI',1),('MANDIRI',1),('BCA',1)

insert into sizes (size_name,  is_active)
values ('L', 1),('XL',1),('XXL',1),('M',1)

insert into colors (color_name,  is_active)
values ('Black', 1),('Green',1),('White',1),('Orange',1)









