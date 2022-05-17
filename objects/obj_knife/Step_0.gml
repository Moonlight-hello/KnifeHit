/// @description Insert description here
// You can write your code in this editor

switch(mystate){
case state.wait:
	if(keyboard_check_pressed(ord("F")))
	{
		mystate=state.throwing;	
		if(instance_exists(obj_wood))
		{			
		showTips=false;
		}
	}
	break;
case state.throwing:
	if(instance_exists(obj_wood)){
		if(y<=obj_wood.y)
		{
			y=obj_wood.y;
			score+=1;
			audio_play_sound(snd_hit,1,false);
			initial_angle = obj_wood.image_angle;
			mystate=state.hit;
			instance_create_layer(261,800,layer,obj_knife);
		}else{
			y-=distance/4;
			if(place_meeting(x,y,obj_knife))
			{
				mystate=state.die;
			}
		}
	}
	break;
case state.hit:	
	if(score>obj_wood.angle_*7)
	{
		obj_wood.angle_+=3;
	}


	image_angle=obj_wood.image_angle-initial_angle;
	x=obj_wood.x+150*cos(degtorad(image_angle-90));
	y=obj_wood.y-150*sin(degtorad(image_angle-90));
	
	break;
case state.die:
	hspeed=random_range(3,10);
	vspeed=random_range(10,35);
	image_angle+=random_range(0,-30);
	
	if(y>=room_height)
	{
		room_goto_next();
	}
	break;
	
}