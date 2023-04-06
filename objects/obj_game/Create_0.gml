/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
line_index=1;
line[0]=instance_create_layer(room_width/8,608,"Instances",obj_hitline);
line[1]=instance_create_layer(room_width/8*3,608,"Instances",obj_hitline);
line[2]=instance_create_layer(room_width/8*5,608,"Instances",obj_hitline);
line[3]=instance_create_layer(room_width/8*7,608,"Instances",obj_hitline);

for(i=0;i<4;i++)
{
	line[i].line_index=i+1;
}
alarm[0]=1;
