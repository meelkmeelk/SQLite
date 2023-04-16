DECLARE
  n INTEGER := &input_number;
  
  FUNCTION fibonacci(x INTEGER) RETURN INTEGER IS
    BEGIN
      IF x = 0 THEN
        RETURN 0;
      ELSIF x = 1 THEN
        RETURN 1;
      ELSE
        RETURN fibonacci(x - 1) + fibonacci(x - 2); /* this is a recurision way of fibonacci*/
      END IF;
    END;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Fibonacci sequence up to ' || n || ':'); /* umm it means to display the number*/
  
  FOR i IN 0..n LOOP /* same as python just slightly different way of looping */
    IF fibonacci(i) > n THEN
      EXIT;
    END IF;
    DBMS_OUTPUT.PUT(fibonacci(i) || ' '); /* btw for ppl who dont know || means concatenate*//
  END LOOP;
END;
