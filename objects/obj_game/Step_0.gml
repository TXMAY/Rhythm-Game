/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
time=current_time/1000

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


if(i<ds_list_size(notes_list))
{
	note=ds_list_find_value(notes_list,i);
	note_time=real(ds_list_find_value(note,0));
	note_pos=real(ds_list_find_value(note,1));
	
	if(time-start_time>=note_time)
	{
		switch(note_pos)
		{
			case 0:
				instance_create_depth(line[0].x,0,line[0].depth-1,obj_note);
				break;
			case 1:
				instance_create_depth(line[1].x,0,line[1].depth-1,obj_note);
				break;
			case 2:
				instance_create_depth(line[2].x,0,line[2].depth-1,obj_note);
				break;
			case 3:
				instance_create_depth(line[3].x,0,line[3].depth-1,obj_note);
				break;
			default:
				break;
		}
		i++;
	}
}