/// put_out_fires(room_index)
// puts out the fires in a certain room

var room_index = argument0;

var fires = obj_control.room_fires[room_index]
var fires_size = ds_list_size(fires);

for(var i = 0;i<fires_size;i++){
    with(fires[| i]) instance_destroy()
}

obj_control.room_fires[room_index] = ds_list_create();

audio_stop_sound(obj_control.room_sound_inst[room_index])

obj_control.room_hit[room_index] = false;
