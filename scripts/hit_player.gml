/// hit_player()

// Hits a random room when player is hit with a torpedo.

randomize();

var room_hit = random_range(0, 4)
while(obj_control.room_hit[room_hit]){
    room_hit = random_range(0, 4);
}

obj_control.room_hit[room_hit] = true;

var all_rooms_hit = true;
for(var i = 0;i<3;i++){
    if(!obj_control.room_hit[i]){
        all_rooms_hit = false;
    }
}

if(all_rooms_hit){
    // lose
    obj_control.alarm[0] = 20
}

if(room_hit == obj_control.control_room && room == rm_sonar){
    room_goto(rm_interior)
}

audio_play_sound(obj_control.room_sound[room_hit], 1, true)

obj_control.room_inst[room_hit].hitsquare_active = true;

place_fires(room_hit)
