/// @description Insert description here
x = x + xVel;

if place_meeting(x,y, obj_Enemy) {
	with(obj_Enemy) {
		hp = hp - 1;
	}
	instance_destroy();
}