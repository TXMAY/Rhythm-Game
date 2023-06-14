/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(room_width/2,room_height/2,global.combo,3,3,0);
draw_set_color(c_black);
draw_set_alpha(0.5);
//draw_rectangle(0,0,room_width,room_height,false);
//draw_set_alpha(1);
var x1=line[line_index-1].x-line[line_index-1].sprite_width/2;
var x2=line[line_index-1].x+line[line_index-1].sprite_width/2;
draw_rectangle(0,0,x1,room_height,false);
draw_rectangle(x2,0,room_width,room_height,false);
//switch(line_index)
//{
//	case 1:
		
//		break;
//	case 2:
//		draw_rectangle(x1,0,x2,room_height,false);
//		break;
//	case 3:
//		draw_rectangle(x1,0,x2,room_height,false);
//		break;
//	case 4:
//		draw_rectangle(x1,0,x2,room_height,false);
//		break;
//	default:
//		break;
//}