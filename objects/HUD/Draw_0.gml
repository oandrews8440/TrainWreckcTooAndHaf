/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y,string)
draw_text(32,32,"Coins: " + string(global.coins));

draw_text(32,64,"Points: " + string(global.points));
draw_text(32,96,"HP: " + string(oPlayer.hp));
draw_text(32,128, "Time left: " + string(timerShown))