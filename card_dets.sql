ALTER TABLE guest DROP column ccnum;
ALTER TABLE guest ADD COLUMN ccnum VARCHAR(16);

UPDATE guest SET ccnum='1345678903241257' 
WHERE id =1343;

UPDATE guest SET ccnum='6784325690834789'
WHERE id=1597;

INSERT INTO payment_type 
	
(id, type)

VALUES
	
('1', 'Debt Card'),
	
('2', 'Cash');