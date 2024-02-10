*** Settings ***
Resource                               ../../base/base.robot
Variables                              ../home/home.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element                      locator=${login_btn}