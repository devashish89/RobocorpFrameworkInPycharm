*** Settings ***
Documentation    doing automation on http://testautomationpractice.blogspot.com/
Library    RPA.Browser
Library    read_file.py

*** Keywords ***
Provided precondition
    Setup system under test


*** Tasks ***
Task1
    open available browser  url=http://testautomationpractice.blogspot.com/
    maximize browser window
    set selenium speed  1 s
    click button  //button[normalize-space()='Click Me']
    handle alert  action=ACCEPT
    LOG  ${CURDIR}

    select frame  //iframe[contains(@id,'frame-one')]
    select from list by label  //select[contains(@name,"RESULT_RadioButton-9")]  Afternoon
    choose file  //input[@type='file' and @class='file_upload']  ${CURDIR}${/}hello.txt
    Sleep  2
    unselect frame

    double click element  //button[contains(text(),'Copy Text')]
    Sleep  2
    drag and drop  //div[@id='draggable']  //div[@id='droppable']
#    Sleep  1 minutes
    Sleep  2

    #scroll the window by pixels
#    execute javascript  window.scrollTo(500,1000)
#    sleep  5
#    execute javascript  window.scrollTo(0,0)
#    sleep  5
#    scroll to the element
    scroll element into view  //a[normalize-space()='Home']
    sleep  2
#    #scroll to the end
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep  2

#    # handle jquery resizable
#    Sleep  1
#    drag and drop by offset  //div[@class='ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se']  161  113
#    Sleep  1



   sleep  2

   LOG  ****************************************
   ${data}=    get_file_content  hello.txt
   LOG  ${data}

    


