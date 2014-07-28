part of dartbin_server;

@red.Group('/')
class Bin{
  
  //get _db => red.request.attributes.dbConn;
  
  @red.DefaultRoute(methods: const [red.POST])
  upload(@red.Body(red.TEXT) String code){
    print(code);
  }
}