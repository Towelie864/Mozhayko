/// @description Вставьте описание здесь

// Проверка нажатия клавиш

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+2, Obj_Wall))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, Obj_Wall);

if (move_x != 0) image_xscale = sign(move_x);

if (!place_meeting(x+move_x, y+2, Obj_Wall) && place_meeting(x+move_x, y+10, Obj_Wall))
{
		move_y = abs(move_x);
		move_x = 0;
}

move_and_collide(move_x, move_y, Obj_Wall, 4, 0, 0, move_speed, -1);



/* A = keyboard_check(ord("A"));
D = keyboard_check(ord("D"));
SPACE = keyboard_check(vk_space);

var move = D - A;
// скорость
hspeed = move * speed;
vspeed += gravity;
//проверка столконовения по горизонтале
if (place_meeting(x+hspeed,y,Obj_Wall)){
while (!place_meeting(x+sign(hspeed),y,Obj_Wall))
x+=sign(hspeed);
hspeed = 0
}

x += hspeed; //двигаем по горизонтале

if (place_meeting(x,y+1,Obj_Wall) and SPACE = 1 ){
vspeed = -6;
}

//проверка двигаем по горизонтале
if (place_meeting(x,y+vspeed,Obj_Wall)){
while (!place_meeting(x,y+sign(vspeed),Obj_Wall))
y+=sign(vspeed);
vspeed = 0
}

y += vspeed; //двигаем по вертикали

//Анимация//
if (D - A != 0)
image_xscale = D - A

//if (x != xprevious or y != yprevious){
//sprite_index = Sp_PlayerRun;
//if (y > yprevious)
//sprite_index = Sp_PlayerjumpDown;
//if (y < yprevious)
//sprite_index = Sp_PlayerjumpUp;
//} else {
//sprite_index = Sp_Playeridel;
//}
*/