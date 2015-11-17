#Usuage: ruby seamless_bot.rb login password favorite

require "selenium-webdriver"
driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://www.seamless.com/corporate/login/"

login = ARGV[0]
pass = ARGV[1]
favorite = ARGV[2]

loginElem = driver.find_element(:id, 'username')
passElem = driver.find_element(:id, 'password')

loginElem.send_keys login
passElem.send_keys pass

#click submit button
driver.find_element(:id, 'submitLogin').click

