INSERT INTO payments 
	
(id, booking_id, type_id, date, amount)

VALUES
	
('53601', '5360', '1', '2016-12-11', 216),
	
('53591', '5359', '1', '2016-11-20', 288), 
	
('53592', '5359', '2', '2016-11-27', 49.06);
	

UPDATE booking 
SET payment_id = '53601' 
WHERE booking_id = 5360;

UPDATE booking 
SET payment_id = '53591' 
WHERE booking_id = 5359;
