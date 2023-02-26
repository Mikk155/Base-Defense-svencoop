#include "../mikk/game_text_custom"
#include "../mikk/player_reequipment"

CBaseDefense g_BaseDefense;

final class CBaseDefense
{
	string[][] Cvars;

	void MapInit()
	{
        g_Scheduler.SetInterval( "Think", 0.5f, g_Scheduler.REPEAT_INFINITE_TIMES );

		game_text_custom::RegisterCustomSentences( 'base_defense/titles/' );
		game_text_custom::Register();
	}

	void MapActivate()
	{
		for(uint i = 0; i < g_BaseDefense.Cvars.length(); i++)
		{
            string FullString = g_BaseDefense.Cvars[ui];
			g_EngineFuncs.CVarSetString( g_BaseDefense.Cvars[i][0], g_BaseDefense.Cvars[i][1] );
        }
		
		g.Util.LoadEntities( 'scripts/maps/base_defense/titles/titles.txt', 'game_text_custom' );
	}
}

void Think()
{
}