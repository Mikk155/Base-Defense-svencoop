@echo off

set mapList=pve_building pve_complex pve_neonlines pve_tomb pve_wintertown

FOR %%m in (%mapList%) do (
	Ripent.exe -export -noinfo %%m.bsp
)

pause