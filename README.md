# Lenovo-Legion-Tab-GSI-FIX
![Made for Magisk](https://img.shields.io/badge/Made%20for-Magisk-teal?style=for-the-badge&logo=magisk)
![GitHub Downloads](https://img.shields.io/github/downloads/monefiera/Lenovo-Legion-Tab-GSI-FIX/total?color=green&style=for-the-badge&logo=github)
![GitHub Issues](https://img.shields.io/github/issues/monefiera/Lenovo-Legion-Tab-GSI-FIX?style=for-the-badge&logo=github)
![GitHub Pull Requests](https://img.shields.io/github/issues-pr/monefiera/Lenovo-Legion-Tab-GSI-FIX?style=for-the-badge&logo=github)  

**by SMART ASW modded by MONE FIERA**  
[For English Users](https://github.com/monefiera/Lenovo-Legion-Tab-GSI-FIX/blob/main/README_EN.md)  

Lenovo Legion Tab/Y700(2023 with SD8+Gen1)にGSIを導入した場合に便利なMagiskモジュールです。  
[crDroid GSI v10.8 by Nazim](https://github.com/naz664/crDroid_gsi/releases/tag/v2024.09.13)(Android 14 QPR3)で動作確認済みです。  
他のGSIで使用し、不具合が発生した場合はお知らせください。  

以下の機能を備えています。  
・自動輝度調整を有効化  
・スタイラスペン(CN/ROWではAP500U、NECではPC-AC-AD042C?)のサポート  
・通話に関するアプリを一括で無効化する(セルスタンバイ対策)  
・「ダブルタップで起動」を有効化するオプションの追加(インストール時に選択できます)  
・最高リフレッシュレートを選択するオプションの追加(120Hzと144Hzから選択できます)  
・[liboemcrypto disabler](https://xdaforums.com/t/magisk-module-liboemcrypto-disabler-for-drm-protected-content-netflix-my5-etc.3794393/)を参考に、WidevineをL3に強制

以下の機能は最新版では削除されています。  
・「磁気カバーによるスリープ/スリープ解除」を有効化(最新のGSIはデフォルトで対応するため外しました)  
・fingerprintなど、GSIのpropをLegion Tabのpropに変更(~~[PixelOS GSI](https://github.com/MisterZtr/PixelOS_gsi/)にて一部アプリがオーバークラッシュを起こしたため~~)  

既知の不具合  
・モジュールをアンインストールしても無効化したアプリは再有効化されません。  
　必要な場合(無いとは思いますが…)手動での復旧をお願いします。  

## Credits(敬称略)  
- [SMART ASW](https://smartasw.com/)：オリジナルモジュールの作成者  
- [Re*Index](https://reindex-ot.github.io/)：セルスタンバイ対策スクリプトの作成者  
- [AndroPlus](https://androplus.jp/) & [Zackptg5](https://zackptg5.com/)：オプションスクリプトの原案者  
- [ianmacd](https://t.co/rvLEb1sEcM)：Widevine L3強制実装の原案者
- [Treble Droid Team](https://github.com/TrebleDroid)：磁気カバー有効化への協力  

Thanks for Everyone!!
