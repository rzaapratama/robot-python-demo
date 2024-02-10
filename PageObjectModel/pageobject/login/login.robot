*** Settings ***
Resource                               ../../base/base.robot
Variables                              ../login/login.yaml

*** Keywords ***
Input Username
    Wait Until Element Is Visible      locator=${username_field}
    Input Text                         locator=${username_field}    text=TestUser

Input Password User
    Input Text                         locator=${password_field}    text=TestPassword

Click Sign In Button On Login Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Is Fail To Logged In
    Wait Until Page Contains           text=Invalid username/password