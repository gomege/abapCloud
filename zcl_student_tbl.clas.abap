CLASS ZCL_STUDENT_TBL007 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_STUDENT_TBL007 IMPLEMENTATION.


    METHOD if_oo_adt_classrun~main.
        data : lt_student type standard table of ZSTUDENTTABLE007.
    lt_student = value #(
    ( studentid = '1000101' fname = 'RAKESH' lname = 'KUMAR' gender = 'M'
    birthdate = '19900414' commnumber = '101' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000102' fname = 'SUNITA' lname = 'RAVAL' gender = 'F'
    birthdate = '19900612' commnumber = '102' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000103' fname = 'BHAVAN' lname = 'SHARMA' gender = 'M'
    birthdate = '19900911' commnumber = '103' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000104' fname = 'MOHAMMAD' lname = 'KHAN' gender = 'M'
    birthdate = '19890612' commnumber = '104' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000105' fname = 'JENNIFER' lname = 'DESOZA' gender = 'F'
    birthdate = '19900403' commnumber = '105' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000106' fname = 'PRIYANK' lname = 'CHATURVEDI' gender = 'M'
    birthdate = '19911206' commnumber = '106' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000107' fname = 'RISHABH' lname = 'BHAT' gender = 'M'
    birthdate = '19911125' commnumber = '107' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000108' fname = 'MUKESH' lname = 'SAHANI' gender = 'M'
    birthdate = '19891010' commnumber = '108' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000109' fname = 'KETKI' lname = 'BHAT' gender = 'F'
    birthdate = '19900501' commnumber = '109' local_created_by = sy-uname local_created_at = sy-datum )
    ( studentid = '1000110' fname = 'KANHA' lname = 'PANDE' gender = 'M'
    birthdate = '19910923' commnumber = '110' local_created_by = sy-uname local_created_at = sy-datum ) ).
            DELETE FROM ZSTUDENTTABLE007.
            INSERT ZSTUDENTTABLE007 FROM TABLE @lt_student.
            clear lt_student.  "clear internal table
            SELECT *
            FROM ZSTUDENTTABLE007
            INTO TABLE @lt_student .
            if sy-subrc is initial. "check result if internal table is not initial
                out->write( 'data inserted successfully!').
                out->write( lt_student ).
            endif.
    ENDMETHOD.
ENDCLASS.