CLASS zcl_enroll_007 DEFINITION
public
final
create public .
public section.
INTERFACES if_oo_adt_classrun.
protected section.
private section.
ENDCLASS.
CLASS zcl_enroll_007 IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
data : lt_enroll type standard table of zenroll007.
lt_enroll = value #(
( trainingid = 'TRNG12' studentid = '1000101' status = 'PASS' MARKS = '88.8' )
( trainingid = 'TRNG13' studentid = '1000105' status = 'PASS' MARKS = '92.0' )
( trainingid = 'TRNG14' studentid = '1000103' status = 'PASS' MARKS = '90.0' )
( trainingid = 'TRNG15' studentid = '1000105' status = 'FAIL' MARKS = '68.0' )
( trainingid = 'TRNG21' studentid = '1000102' status = 'PASS' MARKS = '88.8' )
( trainingid = 'TRNG22' studentid = '1000104' status = 'PASS' MARKS = '92.0' )
( trainingid = 'TRNG23' studentid = '1000103' status = 'PASS' MARKS = '90.0' )
( trainingid = 'TRNG24' studentid = '1000105' status = 'FAIL' MARKS = '60.0' )
( trainingid = 'TRNG31' studentid = '1000101' status = 'PASS' MARKS = '88.8' )
( trainingid = 'TRNG32' studentid = '1000102' status = 'PASS' MARKS = '92.0' )
( trainingid = 'TRNG33' studentid = '1000103' status = 'PASS' MARKS = '90.0' )
( trainingid = 'TRNG34' studentid = '1000104' status = 'FAIL' MARKS = '56.0' )
( trainingid = 'TRNG35' studentid = '1000105' status = 'PASS' MARKS = '88.8' )
( trainingid = 'TRNG36' studentid = '1000106' status = 'PASS' MARKS = '92.0' )
( trainingid = 'TRNG41' studentid = '1000109' status = 'PASS' MARKS = '90.0' )
( trainingid = 'TRNG42' studentid = '1000110' status = 'PASS' MARKS = '93.0' )
).

DELETE FROM ZENROLL007.
INSERT ZENROLL007 FROM TABLE @lt_enroll.
* clear the internal tab
clear lt_enroll.
* check the result
SELECT * FROM ZENROLL007 INTO TABLE @lt_enroll.
if sy-subrc is initial.
out->write( sy-dbcnt ).
out->write( 'data inserted successfully!').
out->write( lt_enroll ).
endif.
endmethod.
ENDCLASS.