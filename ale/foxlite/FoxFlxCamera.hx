package ale.foxlite;

import foxlite.FoxCamera;

import flixel.FlxCamera;

class FoxFlxCamera extends FoxCamera
{
    public var camera:FlxCamera;

    public function new(cam:FlxCamera)
    {
        super();

        camera = cam;
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);
        
        x = camera.scroll.x * 0.01;
        y = -camera.scroll.y * 0.01;
        z = camera.height / 2 * 0.01 / camera.zoom;
    }
}