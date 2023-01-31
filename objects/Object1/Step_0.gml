if (mouse_check_button_pressed(mb_left))
{
    AndroidVibrate(100, 1);
	
	if (mouse_y < room_height/2)
	{
		if (mouse_x < room_width/2)
		{
			iOSVibrateWeak();
		}
		else
		{
			iOSVibrateStrong();
		}
	}
	else
	{
		if (mouse_x < room_width/2)
		{
			iOSVibrateDouble();
		}
		else
		{
			iOSVibrateTriple();
		}
	}
}