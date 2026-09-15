package ale.foxlite.flixel;

import foxlite.flixel.FoxFlxSprite;
import foxlite.FoxCamera;

import flixel.FlxSprite;
import flixel.FlxG;

import ale.foxlite.FoxFlxCamera;

class FoxAttachedSprite extends FoxFlxSprite
{
    public function new(target:FlxSprite)
        super(target);

    override function draw(camera:FoxCamera)
    {
        fixPosition(camera);

        super.draw(camera);
    }

    function fixPosition(camera:FoxCamera)
    {
        if (sprite != null)
        {
            x = ((sprite.x + sprite.width / 2) - (camera is FoxFlxCamera ? cast(camera, FoxFlxCamera).camera.width : FlxG.width) / 2 - sprite.offset.x) * 0.01;
            y = -((sprite.y + sprite.height / 2) - (camera is FoxFlxCamera ? cast(camera, FoxFlxCamera).camera.height : FlxG.height) / 2 - sprite.offset.y) * 0.01;

            scale.x = sprite.scale.x * (sprite.flipX ? -1 : 1);
            scale.y = sprite.scale.y * (sprite.flipY ? -1 : 1);
        }
    }
}