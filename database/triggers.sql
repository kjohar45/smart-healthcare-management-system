CREATE OR REPLACE FUNCTION set_default_payment_status()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.payment_status IS NULL THEN
        NEW.payment_status := 'Pending';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER payment_status_trigger
BEFORE INSERT ON payments
FOR EACH ROW
EXECUTE FUNCTION set_default_payment_status();


CREATE OR REPLACE FUNCTION set_doctor_busy()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE doctors
    SET status = 'busy'
    WHERE doctor_id = NEW.doctor_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER doctor_busy_trigger
AFTER INSERT ON appointments
FOR EACH ROW
EXECUTE FUNCTION set_doctor_busy();
