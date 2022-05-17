/// @description Insert description here
// You can write your code in this editor
x=obj_wood.x+170*cos(degtorad(image_angle-90));
y=obj_wood.y-170*sin(degtorad(image_angle-90));
image_angle=obj_wood.image_angle-initial_angle;

if(beginDisappear)
{
	if(image_alpha>=0){
		image_alpha-=0.05;
	}else{
		instance_destroy();
	}
}