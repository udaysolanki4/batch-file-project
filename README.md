# batch-file-project
automate with one click

## file.bat
This bat file is very useful while organizing your system folders you just need to place this bat file within unorganized folder
and open this file over there.
It will create folders according to the file extensions prensent in current directory. And then placed all the files within a folder of their particular extension.

## website.bat
this file is simply work if you want to login to any page and you don't wanna save your login credential in any web page. Or if you are in a public and want to login as fast as possible. This file can help you with this.
while if you want to use this file for any particular web page you need to follow some of the step to modify this script.
  - Go to the login page of website
  - then check if Tab key working on that page or not
  - If it is working then we can move ahed if not we can't make this executable for that webpage
  - Copy tha url and open it in another window
  - Now press and count Tab key and reach to the Username of the login page to fill the entry.
  - Note the no. of Tabs used to reach
  - Now open up the .bat file and add url
  - Now write the %SendKeys% "{TAB}" how many times your web page needed
  - Now edit the script to enter for user name note that this script used to send one key word at a time so fill username accordingly
  %SendKeys% "{u}"
  %SendKeys% "{s}"
  %SendKeys% "{e}"
  %SendKeys% "{r}"
  %SendKeys% "{n}"
  %SendKeys% "{a}"
  %SendKeys% "{m}"
  %SendKeys% "{e}"
  - Now send Tab key and write password
  - At last we have enter to login 
You can edit this file to use for multiple domain.
keep experimenting!!!
