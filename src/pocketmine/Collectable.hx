package pocketmine;

import php.pthreads.Threaded;

@:native("pocketmine\\Collectable")
extern class Collectable extends Threaded{

    @:native("isGarbage") private var isGarbage_:Bool = false;

    private function new():Void;

    override function isGarbage():Bool;

    function setGarbage():Void;

}
