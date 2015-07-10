draw_set_alpha(1)
draw_set_font(fnt_inventory)


for(i=0;i<20;i++)
    for(j=0;j<20;j++)
        {
         if(i==global.playerPos_x&&j==global.playerPos_y)
          {
          draw_set_colour(c_orange)
            draw_set_alpha(1)
          }
       else if ds_grid_get(global.map,i,j) = 1 
        {
            draw_set_colour(c_green)
            draw_set_alpha(1)
        }
        else if ds_grid_get(global.map,i,j) = 2
        {
            draw_set_colour(c_red)
             draw_set_alpha(1)
        }
        else if ds_grid_get(global.map,i,j) = 0
            draw_set_alpha(0)
        else if ds_grid_get(global.map,i,j) = 9 
            {
            draw_set_alpha(1)
            draw_set_colour(c_yellow)
            }
          else if ds_grid_get(global.map,i,j) = 10 
            {
            draw_set_colour(c_fuchsia)
             draw_set_alpha(1)
            }
          else
          {
            draw_set_colour(c_blue)
             draw_set_alpha(1)
            }
        //draw_text(view_xview[0]+i*17,view_yview[0]+j*17,ds_grid_get(global.map,i,j))
        draw_rectangle(view_xview[0]+i*16+4,view_yview[0]+j*16+4,view_xview[0]+(i+1)*16,view_yview[0]+(j+1)*16,1)
        }
        

draw_text(view_xview[0]+10,view_yview[0]+view_hview[0]-100,global.scale)
    
