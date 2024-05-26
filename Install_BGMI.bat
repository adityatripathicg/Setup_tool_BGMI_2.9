@ECHO OFF
adb uninstall com.pubg.imobile
adb install "BGMI.apk"
adb shell monkey -p com.pubg.imobile -c android.intent.category.LAUNCHER 1
timeout /t 35
adb push "main.18130.com.pubg.imobile.obb" /storage/emulated/0/Android/obb/com.pubg.imobile/
timeout /t 2
adb shell monkey -p com.pubg.imobile -c android.intent.category.LAUNCHER 1
ECHO Please wait for the popup message...
echo msgbox "Please wait your bgmi game is now downloading 1194 MB OBB File, Dont close the game until the download finish... go take 5-10min break when you come back it should download the game fully for you! oh I forget to mention after downloading the obb Resource it will download about 900mb + more HD Resources!`n- @AKGaming",0,"BGMI Installation Notice" > "%temp%\BGMI_Popup.vbs"
start "" wscript "%temp%\BGMI_Popup.vbs"
timeout /t 300 > nul
del "%temp%\BGMI_Popup.vbs"
ECHO BGMI 3.3 APK Installed and Launched Successfully!
PAUSE
