draw_set_alpha(1)
draw_set_font(fnt_inventory)
for(i=0;i<20;i++)
    for(j=0;j<20;j++)
        {
        if(i==global.playerPos_x&&j==global.playerPos_y)
            draw_set_colour(c_orange)
        else if ds_grid_get(global.map,i,j) = 1
            draw_set_colour(c_green)
        else if ds_grid_get(global.map,i,j) = 2
            draw_set_colour(c_red)
        else if ds_grid_get(global.map,i,j) = 0
            draw_set_colour(c_black)
        else if ds_grid_get(global.map,i,j) = 9
            draw_set_colour(c_yellow)
          else if ds_grid_get(global.map,i,j) = 10
            draw_set_colour(c_fuchsia)
          else
            draw_set_colour(c_blue)
        draw_text(view_xview[0]+i*17,view_yview[0]+j*17,ds_grid_get(global.map,i,j))
        }

draw_text(view_xview[0]+10,view_yview[0]+view_hview[0]-100,global.scale)
    