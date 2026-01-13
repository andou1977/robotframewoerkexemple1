*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem
Library    RPA.RobotLogListener
Library    RequestsLibrary

Suite Setup     Connect To Database     pymysql      ${dbName}       ${uername}      ${password}     ${host}     ${port}
Suite Teardown  Disconnect From Database

*** Variables ***
${dbName}      pythonselenium
${uername}     root
${password}
${host}        localhost
${port}        3306


*** Test Cases ***
#Create Person Table
#    ${output}=   Execute SQL String      create table person(id int,name varchar(20),mobile varchar(10))
#    log to console   ${output}
#    Should Be Equal As Strings  ${output}   None
#Inserting Data In Person Table
#    # Single Record
##    ${output}=   Execute SQL String      insert into person values(101,'Rahul','9158565604')
##    log to console   ${output}
##    Should Be Equal As Strings  ${output}   None
#
#    # Multiple record
#    ${output}=   Execute SQL Script     ./test_data/db.sql
#    log to console   ${output}
#    Should Be Equal As Strings  ${output}   None
#
#Validating Name Present
#    Check If Exists In Database     select id from person where name='Viky'
#Validating Name Not
#    Check If Not Exists In Database     select id from person where name='dfds'

Check Person Table Exists
    Table Must Exist    person
Verfiy Row Count Is Zero
    Row Count Is 0     select id from person where name='sdf'

Verfiy Row Count Is Equal to Some Value
    Row Count Is Equal To X     select id from person where name='Rahul Moundekar'    1

Update Record
    ${output}=   Execute SQL String      update person set name='Rahul Moundekar' where id=101
    log to console   ${output}
    Should Be Equal As Strings  ${output}   None

Select All Record from Table
    ${data}=   Query      select * from person
    FOR    ${person}  IN    @{data}
      log to console   ${person}
    END


Delete Record From Table
    ${output}=   Execute SQL String     delete from person where id=104
    log to console   ${output}
    Should Be Equal As Strings  ${output}   None

Verify name exist
    ${verifynow}=    Query    select * from person where name='andou'
    Should Not Be Empty    ${verifynow}

addproduct verify
   ${create}=   Set Variable   insert into person(name) values('alexandre')
   Execute Sql String    ${create}
   ${verify}=   query   select * from person where name='alexandre'
   Should Not Be Empty    ${verify}



