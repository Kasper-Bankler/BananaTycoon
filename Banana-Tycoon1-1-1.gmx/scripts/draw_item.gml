///draw_item(sprite,x,y,scale,description)
spr = argument0
_X = argument1
_Y = argument2
scale = argument3
desc = argument4
max_width = 180
margin = 10
draw_sprite_ext(spr,0,_X,_Y,scale,scale,0,c_white,1)
x1 = _X-sprite_get_xoffset(spr)*scale
y1 = _Y-sprite_get_yoffset(spr)*scale
x2 = x1+sprite_get_width(spr)*scale
y2 = y1+sprite_get_height(spr)*scale
if os_browser = browser_not_a_browser
{
    mx = device_mouse_x_to_gui(0)
    my = device_mouse_y_to_gui(0)
}
else{
    mx = display_mouse_get_x()
    my = display_mouse_get_y()
}

if(point_in_rectangle(mx,my,x1,y1,x2,y2))
{
    
    draw_set_font(f_shop)
    w = min(max_width,string_width_ext(desc,14,max_width))+2*margin
    h = string_height_ext(desc,14,max_width)+2*margin
    if(_X+w>view_wview[0])
    {
       mx-=w 
    }
    draw_set_color(c_black)
    draw_rectangle(mx,my-h,mx+w,my,0)
    draw_set_color(c_white)
    draw_set_font(f_shop)
    draw_text_ext(mx+margin,my-h+margin,desc,14,max_width)
    return mouse_check_button_pressed(mb_left)
}
return false;
