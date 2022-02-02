// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EHurt(){
//check to see if we are currently invincible
if (!other.isInvincible)
{
	//become invincible
	other.invTime = 30
	other.isInvincible = true;
	//loose one hp
	other.hp -= 1;
	//check to see if we have any health remaining
	if(other.hp <1)
	{
		//if no health remaining, die
		EDie();
	}
}
}

function EDie(){

	instance_create_layer(other.x - 16, other.y - 16, "Instances", oCoin)
	instance_destroy(other)
}