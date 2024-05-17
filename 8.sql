SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE DIA_SEMANA(NUM NUMBER) IS
    V_NUM NUMBER := NUM;
    DIA VARCHAR2(15) := '';
BEGIN
    DIA :=
    CASE
        WHEN V_NUM = 1 THEN 'Lunes'
        WHEN V_NUM = 2 THEN 'Martes'
        WHEN V_NUM = 3 THEN 'Miércoles'
        WHEN V_NUM = 4 THEN 'Jueves'
        WHEN V_NUM = 5 THEN 'Viernes'
        WHEN V_NUM = 6 THEN 'Sábado'
        WHEN V_NUM = 7 THEN 'Domingo'
        ELSE 'N/A'
    END;

    DBMS_OUTPUT.PUT_LINE('Día de la semana: ' || DIA);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error general');
END;
/

CALL DIA_SEMANA(3);