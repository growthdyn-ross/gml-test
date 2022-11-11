/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y+1, Object4)&& (key_jump))
{
	vsp = -7;
}

if (place_meeting(x + hsp, y, Object4)){
	while(!place_meeting(x + sign(hsp), y, Object4)){ x = x + sign(hsp);}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x, y + vsp, Object4)){
	while(!place_meeting(x, y + sign(vsp), Object4)){ y = y + sign(vsp);}
	vsp = 0;
}
 
y = y + vsp;