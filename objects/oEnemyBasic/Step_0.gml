/// @description Insert description here
// You can write your code in this editor
invTime -= 1
if (invTime < 1){
isInvincible = false	
}





xVector = xSpeed * xDirection;
yVector = yVector + grv; 


//check to see if the move is legal and does not hit a wall. 
//If it does hit a wall then only move one pixel at a time 
//until you hit the wall. 
if(place_meeting(x +xVector, y, oWall))
{
	xVector = xVector * -1;
	xDirection = xDirection * -1;
}
//now we are safe to move the entire amount of xVector (4 pixels)
x = x + xVector;


if(place_meeting(x, y +yVector, oWall))
{

	
	// ! means "not"
	// sign(yVector) is just one square at a time, it is only ever 1,-1 or 0.
	while(!place_meeting(x, y + sign(yVector), oWall))
	{
	//move one pixel
	y = y + sign(yVector);
	}
	yVector = 0;

}
y = y + yVector;

