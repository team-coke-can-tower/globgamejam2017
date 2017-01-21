/// hit_player()

// Hits a random room when player is hit with a torpedo.

randomize();

// can hit same room twice even if still broken
switch(random_range(0, 3)) {
    case 0:
        obj_control.engine_room_hit = true;
        break;
    case 1:
        obj_control.control_room_hit = true;
        // if in sonar, evacuate room
        if(room == rm_sonar) {
            room_goto(rm_interior);
        }
        break;
    case 2:
        obj_control.living_quarters_hit = true;
        break;
    case 3:
        obj_control.weapon_room_hit = true;
        break;
}
