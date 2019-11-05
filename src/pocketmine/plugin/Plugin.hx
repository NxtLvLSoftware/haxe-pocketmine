package pocketmine.plugin;

import pocketmine.scheduler.TaskScheduler;
import pocketmine.utils.Config;
import php.TypedArray;
import php.files.SplFileInfo;

@:native("pocketmine\\plugin\\Plugin")
extern interface Plugin {

    /**
     * Called when the plugin is loaded, before calling onEnable()
     */
    function onLoad():Void;

    /**
     * Called when the plugin is enabled
     */
    function onEnable():Void;

    function isEnabled():Bool;

    /**
	 * Called by the plugin manager when the plugin is enabled or disabled to inform the plugin of its enabled state.
	 *
	 * @internal This is intended for core use only and should not be used by plugins
	 */
    function setEnabled(enabled:Bool = true):Void;

    /**
	 * Called when the plugin is disabled
	 * Use this to free open things and finish actions
	 */
    function onDisable():Void;

    function isDisabled():Bool;

    /**
	 * Gets the plugin's data folder to save files and configuration.
	 * This directory name has a trailing slash.
	 */
    function getDataFolder():String;

    function getDescription():PluginDescription;

    /**
	 * Gets an embedded resource in the plugin file.
	 */
    function getResource(filename:String):Null<php.Resource>;

    /**
	 * Saves an embedded resource to its relative location in the data folder
	 */
    function saveResource(filename:String, replace:Bool = false):Bool;

    function getResources():TypedArray<Int, SplFileInfo>;

    function getConfig():Config;

    function saveConfig():Void;

    function saveDefaultConfig():Bool;

    function reloadConfig():Void;

    function getServer():Server;

    function getName():String;

    function getLogger():PluginLogger;

    function getPluginLoader():PluginLoader;

    function getScheduler():TaskScheduler;

}
