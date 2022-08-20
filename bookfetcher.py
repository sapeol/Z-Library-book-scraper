import sys
# selenium 4
from selenium import webdriver

from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager

driver = webdriver.Firefox(service=FirefoxService(GeckoDriverManager().install()))
driver.get(sys.argv[1])

# download = locate_with(By.TAG_NAME, "a").above({By.ID: "addDownloadedBook"})
element = driver.find_element("xpath", '/html/body/table/tbody/tr[2]/td/div/div/div/div[3]/div[2]/div[1]/div[1]/div/a')

element.click()
