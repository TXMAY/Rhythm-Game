/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_up))
{
	if(line_index>1)
	{
		line_index--;
	}
}
if(keyboard_check_pressed(vk_right)||keyboard_check_pressed(vk_down))
{
	if(line_index<4)
	{
		line_index++;
	}
}