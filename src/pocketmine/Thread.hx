package pocketmine;

import pocketmine.classloader.ClassLoader;

@:native("pocketmine\\Thread")
@:phpNoConstructor
extern class Thread extends php.pthreads.Thread{

    private var classLoader:Null<ClassLoader>;

    private var composerAutoloaderPath:Null<String>;

    // hide constructor as the class is abstract
    private function new():Void;

    function getClassLoader():Null<ClassLoader>;

    function setClassLoader(loader:ClassLoader = null):Void;

    /**
	 * Registers the class loader for this thread.
	 *
	 * WARNING: This method MUST be called from any descendent threads' run() method to make autoloading usable.
	 * If you do not do this, you will not be able to use new classes that were not loaded when the thread was started
	 * (unless you are using a custom autoloader).
	 */
    function registerClassLoader():Void;

    override function start(options:Null<Int> = 0x111111):Bool;

    /**
	 * Stops the thread using the best way possible. Try to stop it yourself before calling this.
	 */
    function quit():Void;

    function getThreadName():String;

}
