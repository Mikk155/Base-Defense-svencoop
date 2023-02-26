#include "base_defense/base_defense"
#include "mikk/config_classic_mode"

void MapInit()
{
	g_BaseDefense.Register();
	config_classic_mode::Register();
}