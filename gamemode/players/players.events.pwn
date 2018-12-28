#define class players
#define one player

/*
	Players -> Events
*/

// ----------------------------------------------------------

cl.Connect(player)
{
	Player.Connected = true;
	Player.Skin = random(300);
}

cl.Spawn(player)
{
	SetPlayerSkin(player, Player.Skin);
	return 1;
}

cl.RequestClass(player, classid)
{
	log(@RequestClass, "player = %d, classid = %d", player, classid);
	return 0;
}

cl.Disconnect(player, reason)
{
	if(!Player.Connected)
	{
		return 0;
	}

	log(@Disconnect, "player = %d, reason", player, reason);

	thi.Clear(false);
	return 0;
}

// ----------------------------------------------------------

cl.Update(player)
{
	return 1;
}

cl.Death(player, killerid, reason)
{
	log(@Death, "player = %d", player);
}

// ----------------------------------------------------------

cl.CommandText(player, cmdtext[])
{
	return 1;
}

cl.KeyStateChange(player, newkeys, oldkeys)
{
	return 1;
}

// ----------------------------------------------------------

/*
	����� �����
*/

#undef one
#undef class
