CREATE FUNCTION agecalculator(dob DATE)
RETURNS INTEGER AS $$
BEGIN
RETURN (date_part('year', age(dob)));
END; $$
LANGUAGE PLPGSQL;
