import 'package:dio/dio.dart';
import 'package:futurebuilder/model.dart';

Future<List<Model>> getPost() async{
  final url='https://jsonplaceholder.typicode.com/posts';
    try{
        Response response;
        var dio =Dio();
        response= await dio.get(url);
        if(response.statusCode==200){
          var json=response.data;
          var finalData= List<Model>.from(json.map((e)=>Model.fromJson(e)));
          return finalData;
        }
    }catch(e){
      rethrow;
    }
}