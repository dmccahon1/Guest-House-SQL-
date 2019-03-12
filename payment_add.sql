DROP TABLE payment_type, payments

CREATE TABLE payment_type
(
	id INT(3) NOT NULL PRIMARY KEY,
	type VARCHAR(50) NOT NULL
);

CREATE TABLE payments
(
	id int(11) NOT NULL PRIMARY KEY,
	booking_id INT(11) NOT NULL,
	type_id INT(3) NOT NULL,
	date DATE NOT NULL,
	amount FLOAT NOT NULL,
	FOREIGN KEY(booking_id) REFERENCES booking(booking_id),
	FOREIGN KEY (type_id) REFERENCES payment_type(id)
);

ALTER TABLE booking 
	ADD COLUMN payment_id int(11),
	ADD CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) 
	REFERENCES `payments`(`id`);

INSERT INTO payment_type 
	(id, type)
VALUES
	('1', 'Debt Card'),\
	('2', 'Cash');
	