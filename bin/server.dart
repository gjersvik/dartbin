library dartbin_server;

import 'dart:io';

import 'package:redstone/server.dart' as red;
import 'package:redstone_mapper/plugin.dart';
import 'package:redstone_mapper_mongo/manager.dart';

part 'src/bin.dart';

@red.Group("/")
class Test{
  
  @red.DefaultRoute()
  helloWorld() => 'Hello, World!';
}

main(args){
  var dburi = null;
  if(args.isNotEmpty){
    dburi = args[0];
  }else{
    dburi = Platform.environment['MONGO_URI'];
  }
  
  //var dbManager = new MongoDbManager(dburi);
  //red.addPlugin(getMapperPlugin(dbManager));
  red.setupConsoleLog();
  red.start();
}