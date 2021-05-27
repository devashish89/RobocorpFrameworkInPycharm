*** Settings ***
Documentation    doing automation on http://testautomationpractice.blogspot.com/
Library    RPA.Browser

*** Keywords ***
Provided precondition
    Setup system under test


*** Tasks ***
Task1
    open available browser  url=http://testautomationpractice.blogspot.com/
    maximize browser window
    set selenium speed  2 s
    click button  //button[normalize-space()='Click Me']
    handle alert  action=ACCEPT
    LOG  ${CURDIR}

    select frame  //iframe[contains(@id,'frame-one')]
    select from list by label  //select[contains(@name,"RESULT_RadioButton-9")]  Afternoon
    choose file  //input[@type='file' and @class='file_upload']  ${CURDIR}${/}hello.txt
    Sleep  2
    unselect frame

    double click element  //button[contains(text(),'Copy Text')]
    Sleep  3
    drag and drop  //div[@id='draggable']  //div[@id='droppable']
    Sleep  1 minutes

    #scroll the window by pixels
    execute javascript  window.scrollTo(500,1000)
    sleep  5
    execute javascript  window.scrollTo(0,0)
    sleep  5
    scroll to the element
    scroll element into view  //a[normalize-space()='Home']
    sleep  5
    #scroll to the end
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep  5

    # handle jquery resizable
    Sleep  2
    drag and drop by offset  //div[@class='ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se']  161  113
    Sleep  5

   #radio button
   select frame  //iframe[contains(@id,'frame-one')]
   input text  //input[@type="email"]  hello@gmail.com
   sleep  5
   click element  //label[@for="RESULT_RadioButton-7_0"]
   sleep  5
   unselect frame

   sleep  5

   open available browser  http://www.practiceselenium.com/practice-form.html
   maximize browser window
   set selenium speed  2
   select radio button  sex  Female
   select checkbox  //input[@id='tool-0']
   select checkbox  //input[@id='tool-1']

   sleep  10

    


