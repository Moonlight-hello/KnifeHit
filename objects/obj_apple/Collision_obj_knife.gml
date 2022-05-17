/// @description Insert description here
// You can write your code in this editor
score+=10;
audio_play_sound(snd_cut,1,false);

instance_create_layer(x,y,layer,obj_appleleft);
instance_create_layer(x,y,layer,obj_appleright);

instance_destroy();