#include "base_defense/base_defense"
#include "mikk/config_classic_mode"

void MapInit()
{
	g_BaseDefense.MapInit();
	config_classic_mode::Register();

	g_BaseDefense.Cvars.insertLast( 'sv_maxspeed', '700' );
	
}

void MapActivate()
{
	g_BaseDefense.MapActivate();
}