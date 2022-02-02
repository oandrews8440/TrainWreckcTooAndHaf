/// @description Insert description here
// You can write your code in this editor
timer += 1 / room_speed
timerShown = timerStart - floor(timer)
timerReal = timerStart - timer

if(timerShown < 0){
PlayerDeath()
}