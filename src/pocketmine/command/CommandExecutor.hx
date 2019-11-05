package pocketmine.command;

@:native('pocketmine\command\CommandExecutor')
extern interface CommandExecutor {

    function onCommand(sender:CommandSender, command:Command, label:String, args:NativeIndexedArray<String>):Void;

}
