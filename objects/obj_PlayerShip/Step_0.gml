/// @description Insert description here

if (keyboard_check(ord("R"))) {
	game_restart();
}



if (keyboard_check(ord("W"))) {
	//if (y > 0) {
		y = y - speedUp;
	//}
}
if (keyboard_check(ord("S"))) {
	//if (y < room_height) {
		y = y + speedUp;
	//}
}
if (keyboard_check(ord("A"))) {
	//if (x > view_xport[0]) {
		x = x - speedUp;
	//}
}
if (keyboard_check(ord("D"))) {
	//if (x < view_xport[0] + view_xport[0]) {
		x = x + speedUp;
	//}
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