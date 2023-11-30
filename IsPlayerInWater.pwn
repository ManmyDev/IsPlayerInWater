#include <colandreas>

// Available Functions
stock IsPlayerInWater(playerid)
{
	new Float:x, Float:y, Float:z, Float:retx[2], Float:rety[2], Float:retz[2], Float: retdist[2], modelids[2];
	GetPlayerPos(playerid, x, y, z);
	new collisions = CA_RayCastMultiLine(x, y, z+0.7, x, y, z-0.7, retx, rety, retz, retdist, modelids, 2);

	if (collisions)
	{
		for(new i = 0; i < collisions; i++)
		{
			if (modelids[i] == WATER_OBJECT)
			{
				return (true);
			}
		}
	}
	return (false);
}