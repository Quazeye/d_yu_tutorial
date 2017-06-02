/// @description Insert description here
if (hp < 1) {
	instance_create_layer(x,y, "Instances", obj_Explosion);
	instance_destroy();
}