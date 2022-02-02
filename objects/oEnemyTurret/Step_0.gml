/// @description Insert description here
// You can write your code in this editor
atkReload -= 1
 if (atkReload < 1) {
	var shot = instance_create_layer(x, y, "Instances", oProjBullet)
	with (shot) {
		speed = 6
		direction = point_direction(x, y, oPlayer.x, oPlayer.y)
	}
	atkReload = 150
}

invTime -= 1
if(invTime < 1) {
	isInvincible = false
}