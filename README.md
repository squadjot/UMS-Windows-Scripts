# UMS-Windows-Scripts
This is a small setup and guide on how to run BAT files with Universal Media Server via your DLNA Device.

The functionality has not been fully implemented, but with some adjustments (included in this download ) it actually works pretty decent.




A few posts mentioning *script_dir*

http://universalmediaserver.com/forum/memberlist.php?mode=viewprofile&u=62

http://www.universalmediaserver.com/forum/viewtopic.php?f=9&t=12846
  
  
---

### Download and extract 'UMS Scripts' folder on your harddrive.
If you want this to work out of the box from the example below then download:

https://github.com/squadjot/UMS-Windows-Scripts/archive/master.zip 

and put the folder called "UMS Scripts" on your C: Drive

Alternatively you can put the **UMS Scripts** folder where ever you want. Just remember that from UMS.conf you must target the folder called **Scripts Menu** that is located *inside* the **UMS Scripts** folder. ( See example below )



**\\UMS Scripts** : This is the base folder. It comes with two additional folders inside. 'Scripts Menu' and 'helpers'


**\\UMS Scripts\\Scripts Menu** : This folder contains the bat files that will be shown on your TV


**\\UMS Scripts\\helpers** : This is the "engineroom" of your scripts. This is where you can put supplementing scripts, write temp files, save backups etc.



---

### Edit your configuration file
Make sure you have the following variables set in your configuration file (UMS.conf, or specific renderer.conf)
```
show_server_settings_folder = true
script_dir=c:\\UMS Scripts\\Scripts Menu
```
  
---

### Bugs, Fixes & Troubleshooting 
**Important:** The script_dir functionality of UMS is buggy and will result in multiple calls to the the bat file.
To avoid this i made a batfile called **@run-once.bat** which is called through **@ums-script.bat** from every bat file in 'Scripts Menu'

Furthermore i have found that the following settings *can* break UMS's ability to "play" the Scripts correctly. 
It may not matter for you, it all depends on the device. Anyways if you experience problems you can try comment out or change these.

```
# These settings can break UMS's script functionality 
KeepAspectRatio = true
```

---

### Are you using non-default paths?
If you did NOT install UMS in: *C:\Program Files (x86)\Universal Media Server*
and/or do NOT use default profile directory: *C:\ProgramData\UMS* 
Then edit **UMS Scripts\\helpers\\@ums-script.bat** to adjust paths.

---

### Disable autoplay on your device!
Unless you want to run all succeeding scripts, then you have to disable any autoplay(-next) -feature on your device. This functionality is not something UMS has any control over.

---

### Ready to go
Start UMS and navigate to **Server Settings > Scripts** on your TV/device.

---

### Example Scripts
These are the current example scripts included

* **Restart UMS.bat** ( Quit/Restart UMS entirely )
* **Save Copy of Log.bat** ( Copy the logs to \\helpers\\backups\\#timestamp# )
* **Backup UMS configs.bat** ( Copy the configs to \\helpers\\backups\\#timestamp# )
* **Reboot Computer.bat**
* **Shutdown Computer.bat**

---

*Your configuration file is either the UMS.conf , or a specific renderer .conf, 
depending on whether you want a "global" effect or just a per renderer effect.


---
