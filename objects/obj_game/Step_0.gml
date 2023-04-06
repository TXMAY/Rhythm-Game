/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_up)||mouse_wheel_up()||mouse_check_button_pressed(mb_left))
{
	if(line_index>1)
	{
		line_index--;
	}
}
if(keyboard_check_pressed(vk_right)||keyboard_check_pressed(vk_down)||mouse_wheel_down()||mouse_check_button_pressed(mb_right))
{
	if(line_index<4)
	{
		line_index++;
	}
}