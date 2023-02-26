@echo off

if not exist "..\..\Base Defense\bdef" (
  echo Mod dir "..\..\Base Defense\bdef" not found.
  echo Make sure you have installed Base Defense in Steam.
  echo And that you are running this Script in your svencoop or svencoop_addon folders.
  pause
  GOTO BROKEN
)

if not exist gfx\env\mikk\basedefense (mkdir gfx\env\mikk\basedefense)
COPY "..\..\Base Defense\bdef\gfx\env\*" gfx\env\mikk\basedefense\

if not exist maps (mkdir maps)
COPY "..\..\Base Defense\bdef\maps\*.bsp" maps\

if not exist sound\mikk\basedefense\music (mkdir sound\mikk\basedefense\music)
COPY "..\..\Base Defense\bdef\media\*" sound\mikk\basedefense\music\

set SoundFolders=ambience def doors fireworks garg gonome items misc pantagruel panther pitdrone player shocktrooper turret vgui weapons

FOR %%m in (%SoundFolders%) do (
	if not exist sound\mikk\basedefense\%%m (mkdir sound\mikk\basedefense\%%m)
COPY "..\..\Base Defense\bdef\sound\%%m\*" sound\mikk\basedefense\%%m\
)

COPY "..\..\Base Defense\bdef\sound\*" sound\mikk\basedefense\

if not exist sprites\mikk\basedefense\scope (mkdir sprites\mikk\basedefense\scope)
COPY "..\..\Base Defense\bdef\sprites\scope\*" sprites\mikk\basedefense\scope\
COPY "..\..\Base Defense\bdef\sprites\*" sprites\mikk\basedefense\

if not exist models\mikk\basedefense\prop (mkdir models\mikk\basedefense\prop)
COPY "..\..\Base Defense\bdef\models\prop\*" models\mikk\basedefense\prop\
COPY "..\..\Base Defense\bdef\models\*" models\mikk\basedefense\

echo All Files have been downloaded

set mapList=pve_building pve_complex pve_neonlines pve_tomb pve_wintertown

FOR %%m in (%mapList%) do (
	Ripent.exe -import -noinfo %%m.bsp
	echo Modified map %%m.bsp
)

pause