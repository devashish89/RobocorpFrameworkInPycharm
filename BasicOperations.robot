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
    #scroll to the element
    scroll element into view  //div[@id='slider']
    sleep  5
    #scroll to the end
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep  5

    


