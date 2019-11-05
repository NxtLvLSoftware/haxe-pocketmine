package pocketmine.plugin;

import php.interfaces.Throwable;
import php.TypedArray;
import pocketmine.log.AttachableLogger;
import pocketmine.log.LoggerAttachment;

@:native("pocketmine\\plugin\\PluginLogger")
extern class PluginLogger implements AttachableLogger{

    private var pluginName:String;

    private var attachments:TypedArray<Int, LoggerAttachment>;

    function addAttachment(attachment:LoggerAttachment):Void;

    function removeAttachment(attachment:LoggerAttachment):Void;

    function removeAttachments():Void;

    function getAttachments():TypedArray<Int, LoggerAttachment>;

    function new(contect:Plugin);

    function emergency(message:String):Void;

    function alert(message:String):Void;

    function critical(message:String):Void;

    function error(message:String):Void;

    function warning(message:String):Void;

    function notice(message:String):Void;

    function info(message:String):Void;

    function debug(message:String):Void;

    function logException(e:Throwable, trace:TypedArray<Int, String>):Void;

    function log(level:String, message:String):Void;

}
