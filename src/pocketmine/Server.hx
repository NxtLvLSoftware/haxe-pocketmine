package pocketmine;

import pocketmine.log.AttachableThreadedLogger;

@:native("pocketmine\\Server")
extern class Server {

    function getLogger():AttachableThreadedLogger;

}
