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
%SendKeys% "{7}"
%SendKeys% "{6}"
%SendKeys% "{1}"
%SendKeys% "{0}"
%SendKeys% "{8}"
%SendKeys% "{1}"
%SendKeys% "{4}"
%SendKeys% "{5}"
%SendKeys% "{3}"
%SendKeys% "{0}"
%SendKeys% "{TAB}"
%SendKeys% "{U}"
%SendKeys% "{d}"
%SendKeys% "{a}"
%SendKeys% "{y}"
%SendKeys% "{1}"
%SendKeys% "{9}"
%SendKeys% "{9}"
%SendKeys% "{8}"
%SendKeys% "{ENTER}"

goto :EOF


@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));