*** Settings ***
Documentation    doing automation on http://testautomationpractice.blogspot.com/
Library    RPA.Browser
Library    read_file.py

*** Keywords ***
Provided precondition
    Setup system under test


*** Task ***
Task1
   open available browser  http://www.practiceselenium.com/practice-form.html
   maximize browser window
   set selenium speed  1
   input text  //input[@name='firstname']  Devashish
   input text  //input[@name='lastname']  Nigam
   select radio button  sex  Female
   select checkbox  //input[@id='tool-0']
   select checkbox  //input[@id='tool-1']
   select from list by label  //select[@id='selenium_commands']  Browser Commands
   select from list by label  //select[@id='selenium_commands']  Switch Commands
   click element  //button[normalize-space()='OK']