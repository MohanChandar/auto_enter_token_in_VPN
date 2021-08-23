# auto_enter_token_in_VPN
Autohotkey script to open RSA token window, enter PIN, copy the token to Cisco VPN and connect the VPN

## Setup
1. Download the above ahk script
2. Install Autohotkey (full version with ahk2exe)
3. Run the RSA token and Cisco VPN at least once with your preferred token file and connection locations

## Configuration
Edit the script to set 
   - binary locations for RSA token and Cisco VPN.
   - your PIN

## Converting to binary
1. Under <AHK_install_location>/Compiler, you will have Ahk2Exe.exe
2. Run Ahk2Exe and locate your modified auto_enter_token.ahk
3. Save the binary and delete the ahk file to be secure (if you think there is a way to unobscure the binary and find the PIN, please let me know)
