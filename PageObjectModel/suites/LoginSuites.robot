*** Settings ***
resource                               ../pageobject/home/home.robot
resource                               ../pageobject/login/login.robot

*** Test Cases ***
Login with Invalid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password User
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application