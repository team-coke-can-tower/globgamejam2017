/// hit_player()

// Hits a random room when player is hit with a torpedo.

randomize();

// can hit same room twice even if still broken
var room_hit = 0//random_range(0, 3);
obj_control.room_hit[room_hit] = true;

if(room_hit == obj_control.control_room && room == rm_sonar){
    room_goto(rm_interior)
}

audio_play_sound(room_sound[room_hit], 1, true)

obj_control.room_inst[room_hit].hitsquare_active = true;

place_fires(room_hit)
