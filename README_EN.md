# Lenovo-Legion-Tab-GSI-FIX
**by SMART ASW modded by MONE FIERA**

This Magisk module is useful when you are using GSI at Lenovo Legion Tab/Y700 (2023 with SD8+Gen1).    
[crDroid GSI v10.8 by Nazim](https://github.com/naz664/crDroid_gsi/releases/tag/v2024.09.13)(Android 14 QPR3)has been tested to work.  
Please tell me if you use it with other GSIs and encounter any problems.  

The following functions are available  
・Enables automatic brightness adjustment  
・Stylus pen (AP500U for CN/ROW, PC-AC-AD042C? for NEC) support  
・Disable apps related to phone/calls at once (to prevent cell standby).  
・Add option to enable “Double-Tap To Wake/DT2W” (selectable during installation).  
・Add option to select Maximum Refresh Rate (selectable between 120Hz and 144Hz).  
※Refresh Rate setting and whether DT2W is enabled can be checked in the module description field  
・Force Widevine to L3 with reference to [liboemcrypto disabler](https://xdaforums.com/t/magisk-module-liboemcrypto-disabler-for-drm-protected-content-netflix-my5-etc.3794393/)  

The following features have been removed in the latest version  
・Include TrebleApp to enable “Sleep/wake by magnetic cover” (removed because the latest GSI supports it by default)  
・Change GSI's props such as fingerprint to Legion Tab's props(~~Due to repeated crashes of some applications at [PixelOS GSI](https://github.com/MisterZtr/PixelOS_gsi/)~~)  

Known Issues  
・Uninstalling the module will not reactivate the disabled application.  
　You have to restore it manually if necessary (but I don't think it's necessary...).  

## Credits(titles omitted)  
- [SMART ASW](https://smartasw.com/)：Creator of the original module  
- [Re*Index](https://reindex-ot.github.io/)：Author of anti-cell standby scripts  
- [AndroPlus](https://androplus.jp/) & [Zackptg5](https://zackptg5.com/)：Option script originator  
- [ianmacd](https://t.co/rvLEb1sEcM)：Originator of Widevine L3 mandatory implementation
- [Treble Droid Team](https://github.com/TrebleDroid)：Cooperation for Enabling Magnetic Covers  

Thanks for Everyone!!
