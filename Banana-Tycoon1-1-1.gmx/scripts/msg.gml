///msg(besked,knap)
box=instance_create(view_xview[0]+view_wview[0]/2,view_hview[0]/2,obj_msg_box)
box.text=argument0

but=instance_create(view_xview[0]+view_wview[0]/2,view_hview[0]/2+50,obj_button)
but.text=argument1
but.caller=id
