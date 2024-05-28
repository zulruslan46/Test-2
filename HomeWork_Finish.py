from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

def setup_driver():
    driver = webdriver.Chrome()
    driver.implicitly_wait(10)

    return driver

def open_qaauto(driver):
    driver.get("https://guest:welcome2qauto@qauto2.forstudy.space/")
    time.sleep(2)

def register_user(driver, name, last_name, email, password):
    driver.find_element_by_link_text("Sign Up").click()
    driver.find_element_by_name("name").send_keys(name)
    driver.find_element_by_name("lastName").send_keys(last_name)
    driver.find_element_by_name("email").send_keys(email)
    driver.find_element_by_name("password").send_keys(password)
    driver.find_element_by_name("confirmPassword").send_keys(password)
    driver.find_element_by_id("register_button").click()

def check_profile(driver, name, last_name):
    driver.find_element_by_link_text("Profile").click()
    assert driver.find_element_by_css_selector(".profile-name").text == name
    assert driver.find_element_by_css_selector(".profile-last-name").text == last_name

def add_car(driver, car_name):
    driver.find_element_by_link_text("Add Car").click()
    driver.find_element_by_name("carName").send_keys(car_name)
    driver.find_element_by_css_selector(".add-car-button").click()

def add_expense(driver, expense_name):
    driver.find_element_by_link_text("Add Expense").click()
    driver.find_element_by_name("expense").send_keys(expense_name)
    driver.find_element_by_css_selector(".add-expense-button").click()

def delete_account(driver):
    driver.find_element_by_link_text("Delete Account").click()
    driver.find_element_by_name("confirmDelete").click()
    WebDriverWait(driver, 10).until(EC.url_to_be("https://guest:welcome2qauto@qauto2.forstudy.space/"))

def test_qaauto():
    driver = setup_driver()
    open_qaauto(driver)
    register_user(driver, "Ruslan", "Zhul", "zulruslan46@gmail.com", "7777777")
    check_profile(driver, "Ruslan", "Zhul")
    add_car(driver, "BMW x5")
    add_expense(driver, "Gas")
    delete_account(driver)
    driver.quit()

if __name__ == "__main__":
    test_qaauto()