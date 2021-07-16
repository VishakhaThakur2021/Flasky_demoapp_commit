*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${searchresults}    xpath://div[@class='Table__Wrapper-hvj9es-0 bWXEOS']/a
${keys}    Get Text    xpath://div[@class='Table__Wrapper-hvj9es-0 bWXEOS']//div[1]/p
${values}    Get Text    xpath://div[@class='Table__Wrapper-hvj9es-0 bWXEOS']//div[2]
${new}
*** Keywords ***
#Verify Search Results
  #  Page Should Contain    SEARCH RESULTS FOR

Standard Sorting
   #1 ${sorted_list}    Sort List    ${keys}
   # ${result}    Create List
   # Lists Should Be Equal    ${sorted_list}    ${result}
   #@{actual}    Create List    ${keys}
   #@{sorted}    Copy List    ${actual}
   #SortList    ${sorted}
   #Should Be Equal    ${actual}    ${sorted}

    @{locators}    Get Webelements     xpath://div[@class='Table__Wrapper-hvj9es-0 bWXEOS']//div[1]/p
    ${result}    Create List

    FOR   ${locator}   IN    @{locators}
    ${name}=    Get Text    ${locator}
    Append To List  ${result}  ${name}
    END

#2Verify sorting
 #   &{mydict}    Create Dictionary    ${keys}    ${values}
  #  FOR        ${items}        IN        sorted(&{mydict}.items())
   #     Log to console        ${items}
    #END
    #FOR        ${keys}        ${values}        IN        &{mydict}
     #   Log To Console       key = ${keys}, value = ${values}
    #END

