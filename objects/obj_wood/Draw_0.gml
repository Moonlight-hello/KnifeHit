/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_font(font_normal);

draw_text(room_width/2,64,"得分:"+string(score));

if(showTips==true)
{
	draw_text(room_width/2,576,"按下F建发射飞刀");
}

