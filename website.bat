@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "1.254.254.254"
rem the script only works if the application in question is the active window. Set a timer to wait for it to load!
timeout /t 20
rem use the tab key to move the cursor to the login and password inputs. Most htmls interact nicely with the tab key being pressed to access quick links.
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{UP}"
%SendKeys% "{TAB}"
rem now you can have it send the actual username/password to input box
%SendKeys% "{u}"
%SendKeys% "{s}"
%SendKeys% "{e}"
%SendKeys% "{r}"
%SendKeys% "{n}"
%SendKeys% "{a}"
%SendKeys% "{m}"
%SendKeys% "{e}"
%SendKeys% "{TAB}"
%SendKeys% "{P}"
%SendKeys% "{a}"
%SendKeys% "{s}"
%SendKeys% "{s}"
%SendKeys% "{w}"
%SendKeys% "{o}"
%SendKeys% "{r}"
%SendKeys% "{d}"
%SendKeys% "{ENTER}"

goto :EOF


@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
