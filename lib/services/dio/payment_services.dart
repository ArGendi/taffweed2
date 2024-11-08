import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tafweed/constants.dart';
import 'package:tafweed/local/cache.dart';
import 'package:tafweed/services/dio/dio_services.dart';

class PaymentServices extends DioServices{
  Future<Response?> get() async{
    try{
      var response = await dio.get(
        myFatoorahApiKeyEndPoint,
        options: Options(
          headers: {
            "Authorization": "Bearer ${Cache.getToken()}"
          }
        )
      );
      log(response.toString());
      if(response.statusCode! >=200 && response.statusCode! < 300){
        return response;
      }
      else{
        return null;
      }
    }
    catch(e){
      return null;
    }
  }
}