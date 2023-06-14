/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
global.combo=0
line_index=1;
line[0]=instance_create_layer(room_width/8,608,"Instances",obj_hitline);
line[1]=instance_create_layer(room_width/8*3,608,"Instances",obj_hitline);
line[2]=instance_create_layer(room_width/8*5,608,"Instances",obj_hitline);
line[3]=instance_create_layer(room_width/8*7,608,"Instances",obj_hitline);

start_time=current_time/1000;

for(i=0;i<4;i++)
{
	line[i].line_index=i+1;
}
//alarm[0]=1;


//file = file_text_open_read(working_directory+"note.json") ; json = file_text_read_string(file) ;

//jsonMap = json_decode(json); if (jsonMap != -1) { show_message("JSON sucessfully decoded");
//biMap = ds_map_find_value(jsonMap, "notes"); size = ds_map_size(jsonMap) ; show_message("There are "+string(size)+" entires in the tree index");

//show_message((file));
//show_message((json));

//show_message((jsonMap));
//show_message((biMap));
//show_message(typeof(biMap));
//}else{ show_message("failed") ; }

json_file=file_text_open_read(working_directory+"data/note.json");
show_debug_message(json_file);
json_data="";
while(!file_text_eof(json_file))	// 파일 내용을 읽을 때, 엔터가 되어 있으면 한 문장만 읽고 끝내서(;;)while문으로 끝까지 돌리기
{
	json_data+=file_text_read_string(json_file);	// 한 줄 읽고,
	file_text_readln(json_file)	// 다음 줄로 넘어가기
}

show_debug_message(json_data);
file_text_close(json_file);
data_map=json_decode(json_data);
show_debug_message(data_map);
notes_list=ds_map_find_value(data_map,ds_map_find_first(data_map));
show_debug_message(notes_list);

//https://cafe.naver.com/crazygm/228147 참고

i=0;
alarm[0]=room_speed*3;
