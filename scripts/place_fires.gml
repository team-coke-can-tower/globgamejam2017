/// place_fires()

var hittingroom = instance_find(obj_roomhit, 0);
var fires = ds_list_create()
var num_fires = irandom_range(4, 8);

for(var i = 0;i < num_fires;i++){
    while(true){
        show_debug_message("Test");
        var tryX = random_range(hittingroom.x, hittingroom.x + hittingroom.sprite_width);
        var tryY = random_range(hittingroom.y, hittingroom.y + hittingroom.sprite_height)
        
        with(instance_find(obj_blank_fire, 0)) var can_place = place_free(tryX, tryY)
        
        if(can_place){
            var inst = instance_create(tryX, tryY, obj_fire);
            ds_list_add(fires, inst);
            break;
        }
    }
}
