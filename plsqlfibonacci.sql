DECLARE
  n INTEGER := &input_number;
  
  FUNCTION fibonacci(x INTEGER) RETURN INTEGER IS
    BEGIN
      IF x = 0 THEN
        RETURN 0;
      ELSIF x = 1 THEN
        RETURN 1;
      ELSE
        RETURN fibonacci(x - 1) + fibonacci(x - 2);
      END IF;
    END;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Fibonacci sequence up to ' || n || ':');
  
  FOR i IN 0..n LOOP
    IF fibonacci(i) > n THEN
      EXIT;
    END IF;
    DBMS_OUTPUT.PUT(fibonacci(i) || ' ');
  END LOOP;
END;
