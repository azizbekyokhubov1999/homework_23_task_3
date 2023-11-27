import 'package:http/http.dart';

class NetworkService{
  //https://65606ee083aba11d99d0cb16.mockapi.io/product
static final baseUrl = "65606ee083aba11d99d0cb16.mockapi.io";
static final apiProduct = "/product";

static Future<String> getData(String api)async{
  Uri url = Uri.https(baseUrl, api);
  Response response = await get(url);
  if(response.statusCode == 200 || response.statusCode == 201){
    return response.body;
  }
  else{
    return "Something went wrong at ${response.statusCode}";
  }
}
}