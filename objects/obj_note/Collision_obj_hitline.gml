/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(keyboard_check_pressed(vk_space))
{
	if(obj_game.line_index==other.line_index)
	{
		global.combo+=1;
		instance_destroy();
	}
}