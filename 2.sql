SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION DIVIDIR(DVDENDO NUMBER, DVSOR NUMBER)
RETURN NUMBER IS
    DIVIDENDO NUMBER := DVDENDO;
    DIVISOR NUMBER := DVSOR;
    COCIENTE NUMBER := 0;
BEGIN
    COCIENTE := DIVIDENDO / DIVISOR;
    RETURN COCIENTE;
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        RETURN -2;
    WHEN OTHERS THEN
        RETURN -1;
END;
/

SELECT DIVIDIR(5, 3) FROM DUAL;