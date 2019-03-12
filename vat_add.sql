ALTER TABLE extra
	
ADD COLUMN VAT float;


ALTER TABLE extra	

ADD COLUMN excl_vat float;


ALTER TABLE extra
DROP column total;



UPDATE extra
SET VAT =
extra.amount(extra.amount / 1.20))

WHERE extra.description LIKE "Phone%";



UPDATE extra
SET excl_vat = extra.amount - Vat; 



ALTER TABLE rate

ADD COLUMN vat float;


ALTER TABLE rate
	
ADD COLUMN excl_vat float;



UPDATE rate
SET vat = (amount -(rate.amount / 1.20));



UPDATE rate
SET excl_vat = amount - vat


