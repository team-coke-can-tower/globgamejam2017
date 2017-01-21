/// place_fires(room_index)

var room_index = argument0;
var room_inst = obj_control.room_inst[room_index]
var fires = obj_control.room_fires[room_index]
var num_fires = irandom_range(4, 8);

for(var i = 0;i < num_fires;i++){
    while(true){
        var tryX = random_range(room_inst.x, room_inst.x + room_inst.sprite_width);
        var tryY = random_range(room_inst.y, room_inst.y + room_inst.sprite_height)
        
        with(obj_blank_fire) var can_place = place_free(tryX, tryY)
        
        if(can_place){
            var inst = instance_create(tryX, tryY, obj_fire);
            ds_list_add(fires, inst);
            break;
        }
    }
}
