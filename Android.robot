*** Settings ***
Library    AppiumLibrary    run_on_failure=Capture Page Screenshot

Test Setup      Open Application     ${appiumHost}    platformName=${platformName}
                        ...  platformVersion=${platformVersion}    automationName=${automationName}
                        ...  deviceName=${deviceName}    appPackage=${appPackage}
                        ...  appActivity=${appActivity}
Test Teardown   Close Application


*** Variables ***
${appiumHost}         http://localhost:4723/wd/hub
${platformName}       Android
${platformVersion}    6.0.1
${automationName}     uiautomator2
${deviceName}         My Device
${appPackage}         com.misli.androidNew
${appActivity}        com.misli.androidNew.SplashScreen


${btnLogin}        com.misli.androidNew:id/btnLogin




*** Keywords ***
Misli.com uygulamasında giriş yap butonuna tıklanır
    Wait Until Page Contains Element    ${btnLogin}
    Click Element    id=${btnLogin}



*** Test Cases ***
Misli.com uygulamasına giriş yapma
    Misli.com uygulamasında giriş yap butonuna tıklanır

