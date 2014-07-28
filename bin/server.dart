import 'package:redstone/server.dart' as red;

@red.Route('/')
helloWorld() => 'Hello, World!';

main(){
  red.setupConsoleLog();
  red.start();
}