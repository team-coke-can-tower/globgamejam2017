/// move_player(dx, dy)

var dx = argument0;
var dy = argument1;

var newX = obj_player.x + dx
var newY = obj_player.y + dy

if (place_free(newX, newY)) {
    obj_player.x = newX;
    obj_player.y = newY;
}
