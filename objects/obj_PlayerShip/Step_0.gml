/// @description Insert description here

if (keyboard_check(ord("R"))) {
	game_restart();
}



if (keyboard_check(ord("W"))) {
	y = y - speedUp;
}
if (keyboard_check(ord("S"))) {
	y = y + speedUp;
}
if (keyboard_check(ord("A"))) {
	x = x - speedUp;
}
if (keyboard_check(ord("D"))) {
	x = x + speedUp;
}

if (keyboard_check(ord("L"))) {
	if (firingDelay > 0) {
		firingDelay = firingDelay - 1;
	} else {
		instance_create_layer(x,y, "Instances", obj_PlayerShot);
		firingDelay = firingDelayMax;
	}
} else {
	firingDelay = 0;
}