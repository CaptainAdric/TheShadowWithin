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

            PC Port
            Keyboard Or Controller

    
*/

if gamepad_is_connected(0)
{
    gpad = true;
}
else
{
    gpad = false;
}

/*

                        Keyboard
*/

if (gpad = false)
{

/*
                        Left Movement
    
*/
    
    if keyboard_check(vk_left)
    {
        if place_free(x-argument0,y)
        {
        x-=argument0;
    
/*

                        Left Movement Animation
    
*/
    
            sprite_index = spr_shadow_left;
            image_speed = 0.2;
        }
    }
/*

                        Left Movement Stationary
    
*/
    if keyboard_check_released(vk_left)
    {
        sprite_index = spr_shadow_left_still;
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

                        Right Movement Animation
    
*/
    
            sprite_index = spr_shadow_right;
            image_speed = 0.2;
        }
    }
/*

                        Right Movement Stationary
    
*/
    if keyboard_check_released(vk_right)
    {
        sprite_index = spr_shadow_right_still;
        image_speed = 0;
    }

/*

                        Jump Movement
    
*/

    if keyboard_check(vk_up) and not place_free(x,y+1)
    {
        vspeed=-argument2;
    }
    
}
