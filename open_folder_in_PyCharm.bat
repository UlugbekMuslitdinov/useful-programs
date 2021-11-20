@echo off

SET PyCharmPath=D:\Program Files\JetBrains\PyCharm 2021.2.2\bin\pycharm64.exe
 
echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\PyCharm" /t REG_SZ /v "" /d "Open in PyCharm"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\PyCharm" /t REG_EXPAND_SZ /v "Icon" /d "%PyCharmPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\PyCharm\command" /t REG_SZ /v "" /d "%PyCharmPath% \"%%1\"" /f
 
echo Adding within a folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm" /t REG_SZ /v "" /d "Open with PyCharm"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm" /t REG_EXPAND_SZ /v "Icon" /d "%PyCharmPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\PyCharm\command" /t REG_SZ /v "" /d "%PyCharmPath% \"%%V\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PyCharm" /t REG_SZ /v "" /d "Open with PyCharm"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PyCharm" /t REG_EXPAND_SZ /v "Icon" /d "%PyCharmPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\PyCharm\command" /t REG_SZ /v "" /d "%PyCharmPath% \"%%1\"" /f