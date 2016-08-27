/* 


                    Argument 0 = Player Speed
                    Argument 1 = Gravity Pull
                    Argument 2 = Jump Height

                    
*/

/*

                        Gravity Ctrl
    
*/

if place_free(x,y+1)
{
    gravity=argument1;
}
        
else
{
    gravity=0;
}
        
/*

                        Left Movement
    
*/
if keyboard_check(vk_left)
{
    if place_free(x-argument0,y)
    {
    x-=argument0;
    
    
/*

                        RAMP MOVEMENT LEFT
    
*/  
    var i
    
    for(i=0;i<12;i+=1)
    {
        if place_free(x-argument0,y-i)
        {
            x-=argument0;
            y-=i;
            break;
        }
    }
    
/*

                        Left Movement Animation
    
*/
    
        sprite_index = spr_player_left;
        image_speed = 0.2;
    }
}
/*

                        Left Movement Stationary
    
*/
if keyboard_check_released(vk_left)
{
    sprite_index = spr_player_left_still;
    image_speed = 0;
}
        
/*

                        Right Movement
    
*/
        
if keyboard_check(vk_right)
{
    if place_free(x+argument0,y)
    {
    x+=argument0;
    
/*

                        Right Movement
    
*/

    var i
    
    for(i=0;i<12;i+=1)
    {
        if place_free(x+argument0,y-i)
        {
            x+=argument0;
            y-=i;
            break;
        }
    }    
/*

                        Right Movement Animation
    
*/
    
        sprite_index = spr_player_right;
        image_speed = 0.2;
    }
}
/*

                        Right Movement Stationary
    
*/
if keyboard_check_released(vk_right)
{
    sprite_index = spr_player_right_still;
    image_speed = 0;
}

/*

                        Jump Movement
    
*/

if keyboard_check(vk_up) and not place_free(x,y+1)
{
    vspeed=-argument2;
}
