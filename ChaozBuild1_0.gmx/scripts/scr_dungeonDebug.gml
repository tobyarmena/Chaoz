block_size = 18
v_space = 2
h_space = 2

v_offset = 750
h_offset = 1500

draw_set_alpha(1)
draw_set_font(fnt_inventory)


for(i=0;i<20;i++)
    for(j=0;j<20;j++)
        {
         if(i==global.playerPos_x&&j==global.playerPos_y)
          {
          if(ds_grid_get(global.map,i,j) = 2)
          {
            draw_set_alpha(1)
           draw_sprite_stretched(spr_miniMap,3,view_xview[0]+i*block_size+h_space+h_offset,view_yview[0]+j*block_size+v_space+v_offset,16,16)
          }
          else
          {
          draw_set_alpha(1)
          draw_sprite_stretched(spr_miniMap,1,view_xview[0]+i*block_size+h_space+h_offset,view_yview[0]+j*block_size+v_space+v_offset,16,16)
          }

        }
        else if ds_grid_get(global.map,i,j) = 2
        {
           draw_set_alpha(1)
            draw_sprite_stretched(spr_miniMap,2,view_xview[0]+i*block_size+h_space+h_offset,view_yview[0]+j*block_size+v_space+v_offset,16,16)
        }
       
        
          else if ds_grid_get(global.map,i,j) = 0
            draw_set_alpha(0)
           else
          {
             draw_set_alpha(1)
          draw_sprite_stretched(spr_miniMap,0,view_xview[0]+i*block_size+h_space+h_offset,view_yview[0]+j*block_size+v_space+v_offset,16,16)
            }
        //draw_text(view_xview[0]+i*17,view_yview[0]+j*17,ds_grid_get(global.map,i,j))
        //draw_rectangle(view_xview[0]+i*block_size+h_space+h_offset,view_yview[0]+j*block_size+v_space+v_offset,view_xview[0]+(i+1)*block_size+h_offset,view_yview[0]+(j+1)*block_size+v_offset,1)
        }
        
/*draw_set_alpha(1)
draw_sprite_stretched(spr_miniMap,1,view_xview[0]+xx*block_size+h_space+h_offset,view_yview[0]+yy*block_size+v_space+v_offset,16,16)*/
//draw_text(view_xview[0]+10,view_yview[0]+view_hview[0]-100,global.scale)
    
