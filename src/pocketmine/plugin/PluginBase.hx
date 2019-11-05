package pocketmine.plugin;

import pocketmine.utils.Config;
import php.files.SplFileInfo;
import php.TypedArray;
import pocketmine.scheduler.TaskScheduler;

@:native("pocketmine\\plugin\\PluginBase")
extern class PluginBase implements Plugin {

    private var loader:PluginLoader;

    private var server:Server;

    @:native("isEnabled") private var isEnabled_:Bool;

    private var description:PluginDescription;

    private var dataFolder:String;

    private var config:Null<Config>;

    private var configFile:String;

    private var file:String;

    private var logger:PluginLogger;

    private var scheduler:TaskScheduler;

    private function new(loader:PluginLoader, server:Server, description:PluginDescription, dataFolder:String, file:String):Void;

    /**
     * Called when the plugin is loaded, before calling onEnable()
     */
    function onLoad():Void;

    function onEnable():Void;

    function isEnabled():Bool;

    function setEnabled(enabled:Bool = true):Void;

    function onDisable():Void;

    function isDisabled():Bool;

    function getDataFolder():String;

    function getDescription():PluginDescription;

    function getResource(filename:String):Null<php.Resource>;

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
