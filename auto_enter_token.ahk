#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#NoEnv

CoordMode, Mouse, Window

SendMode Input

#SingleInstance Force

SetTitleMatchMode 2

#WinActivateForce

SetControlDelay 1

SetWinDelay 0

SetKeyDelay -1

SetMouseDelay -1

SetBatchLines -1

Run "C:\Program Files\RSA SecurID Software Token\SecurID.exe"
Sleep, 1000

Click, 200 130 ; click on the "Enter PIN" input field

; Enter your PIN as indivdual digits. Example shows entering 1234

Send {1}
Sleep, 10
Send {2}
Sleep, 10
Send {3}
Sleep, 10
Send {4}
Sleep, 10

Send {enter}
Sleep, 500

clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.

; Run both ways of Ctrl+C
Send ^c
Sleep, 10

Send {CtrlDown}
Sleep, 10
Send c
Sleep, 10
Send {CtrlUp}
Sleep, 10
Sleep, 10

ClipWait  ; Wait for the clipboard to contain the code.

Send !{F4} ; Close the token window
Sleep, 10

Run "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
Sleep, 2000
Click, 350 110 ; click on the "Connect" button
Sleep, 10000

Send ^v ; Paste the code

Sleep, 500
Send {enter} ; Send the code
