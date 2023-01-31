if (mouse_check_button_pressed(mb_left))
{
	if (mouse_y < room_height/2)
	{
		if (mouse_x < room_width/2)
		{
			iOSVibrateWeak();
            AndroidVibrateWeak();
		}
		else
		{
			iOSVibrateStrong();
            AndroidVibrateStrong();
		}
	}
	else
	{
		if (mouse_x < room_width/2)
		{
			iOSVibrateDouble();
            AndroidVibrateDouble();
		}
		else
		{
			iOSVibrateTriple();
            AndroidVibrateTriple();
		}
	}
}