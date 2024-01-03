@AbapCatalog.sqlViewName: 'ZCDS_STUDENT_007'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS on top of student table - G007'
define view ZCDSSTUDENT_007 as select from zstudenttable007 {
@UI.hidden: true
key studentid,
@Search.defaultSearchElement: true @UI:{lineItem: [{position: 10, label:
'Fname'}],
identification: [ {position: 10, label: 'fname'}],
selectionField: [ {position: 10}]}
fname,
@Search.defaultSearchElement: true
@UI: {lineItem: [ {position: 20, label: 'Lname'}],
identification: [ {position: 20, label: 'Lname'}],
selectionField: [ {position: 20}]}
lname,
@Search.defaultSearchElement: true
@UI: {lineItem: [ {position: 30, label: 'Gender'}],
identification: [ {position: 30, label: 'Gender'}],
selectionField: [ {position: 30}]}
gender,
@Search.defaultSearchElement: true
@UI: {lineItem: [ {position: 40, label: 'DOB'}],
identification: [ {position: 40, label: 'DOB'}],
selectionField: [ {position: 40}]}
birthdate,
@Search.defaultSearchElement: true
@UI: {lineItem: [ {position: 50, label: 'commnumber'}],
identification: [ {position: 50, label: 'Lname'}], 
selectionField: [ {position: 50}]}
commnumber
}