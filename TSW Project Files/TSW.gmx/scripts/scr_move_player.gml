/* 
                    Argument 0 = Player Speed
                    Argument 1 = Gravity Pull
                    Argument 2 = Jump Height                    

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
    if (global.left == true) && (global.press == true)
    {
        sprite_index = spr_left
        image_speed = .3;   
    /*
            RAMP MOVEMENT       
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
    }   
/*
                        Left Movement Stationary   
*/
if (global.left == false) && (global.press == false)
{
    sprite_index = spr_idle;
    image_speed = .3;
    image_yscale = .35;
    image_xscale = .4;
}       
/*
                        Right Movement   
*/       
if (global.right == true) && (global.press == true)
{    
/*
            RAMP MOVEMENT            
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
        sprite_index = spr_right;
        image_speed = .3;
    }
/*
                        Right Movement Stationary    
*/
if (global.right == false) && (global.press == false)
{
    sprite_index = spr_idle;
    image_speed = .3;
    image_yscale = .35;
    image_xscale = .4;
}
