/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(keyboard_check_pressed(vk_space))
{
	if(obj_global.line_index==other.line_index)
	{
		instance_destroy();
	}
}