SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION APELLIDOS(DNI CONDUCTOR.DNI%TYPE)
RETURN VARCHAR2 IS
    V_DNI CONDUCTOR.DNI%TYPE := DNI;
    V_PRAPELLIDO VARCHAR2(30);
    V_SGAPELLIDO VARCHAR2(30);
BEGIN
    SELECT PRAPELLIDO INTO V_PRAPELLIDO
    FROM CONDUCTOR
    WHERE DNI = V_DNI;
    
    SELECT SGAPELLIDO INTO V_SGAPELLIDO
    FROM CONDUCTOR
    WHERE DNI = V_DNI;

    RETURN V_PRAPELLIDO || ' ' || V_SGAPELLIDO;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error general');
END;
/

SELECT APELLIDOS('93606885J') FROM DUAL;