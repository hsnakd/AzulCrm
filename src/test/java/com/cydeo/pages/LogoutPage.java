package com.cydeo.pages;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


public class LogoutPage {

    public LogoutPage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(xpath = "//input[@name='USER_LOGIN']")
    public WebElement username;

    @FindBy(xpath = "//input[@name='USER_PASSWORD']")
    public WebElement password;

    @FindBy(xpath = "//input[@class='login-btn']")
    public WebElement loginButton;

    @FindBy(xpath = "//a[@class='login-link-forgot-pass']")
    public WebElement forgotPassword;

    @FindBy(xpath = "//div[@class='errortext']")
    public WebElement incorrectLoginMessage;

    @FindBy(xpath = "")
    public WebElement emptyLoginMessage;

    @FindBy(xpath = "//div[@class='log-popup-header']")
    public WebElement getPassword;

    @FindBy(xpath = "//input[@id='USER_REMEMBER']")
    public WebElement rememberMeCheckBox;

    @FindBy(xpath = "//label[@for='USER_REMEMBER']")
    public WebElement rememberMeLink;

    /** ****************************************************     */

    @FindBy(xpath = "//span[@id='user-name']")
    public WebElement profileUsername;

    @FindBy(xpath = "//td[@class='user-profile-nowrap-second']")
    public WebElement mail;

    @FindBy(xpath = "(//span[@class='menu-popup-item-text'])[2]")
    public WebElement logout;





}
