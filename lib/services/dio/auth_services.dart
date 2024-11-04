import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:tafweed/constants.dart';
import 'package:tafweed/enums.dart';
import 'package:tafweed/local/cache.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tafweed/models/data.dart';
import 'package:tafweed/services/dio/dio_services.dart';

class AuthServices extends DioServices{
  Future<Response?> login(String phone, String password) async{
    try{
      var response = await dio.post(loginEndPoint, data: {
        //"country_id": countryId,
        "email_or_phone": phone, 
        "password": password,
      });
      if(response.statusCode! >= 200 && response.statusCode! < 300){
        return response;
      }
      else{
        return null;
      }
    }
    catch(e){
      print(e);
      return null;
    }
  }

  Future<Data> register(String name, String phone, String password, Gender gender, int countryId, BuildContext context) async{
    try{
      // var response = await http.post(
      //   Uri.parse("$baseUrl$registerEndPoint"),
      //   body: 
      // );

      print("$name, $password, $gender, $phone, ${Platform.isAndroid}, $countryId");
      var response = await dio.post(registerEndPoint, data: {
        "name": name,
        "password": password,
        "gender": gender == Gender.male ? 1 : 2,
        "phone_number": phone,
        "phone_type": Platform.isAndroid ? "Android" : "Iphone",
        "country_id": countryId,
      });
      log("${response.statusCode} $response");
      if(response.statusCode! >= 200 && response.statusCode! < 300){
        return Data<Response>(response, DataStatus.success);
      }
      else if(response.statusCode == 400 && response.data["message"] != null){
        if(response.data["message"] == "this user already exists"){
          return Data<String>(AppLocalizations.of(context)!.this_user_already_exists, DataStatus.fail);
        }
        return Data<String>(AppLocalizations.of(context)!.retry_again, DataStatus.fail);
      }
      else{
        return Data<String>(AppLocalizations.of(context)!.retry_again, DataStatus.fail);
      }
    }
    catch(e){
      print("error: $e");
      return Data<String>(AppLocalizations.of(context)!.retry_again, DataStatus.fail);
    }
  }

  Future<Response?> edit(Map<String, dynamic> data) async{
    try{
      var response = await dio.post(
        updateProfileEndPoint, 
        data: data, 
        options: Options(
          headers: {
            "Authorization": "Bearer ${Cache.getToken()}",
          }
        ),
      );
      if(response.statusCode! >= 200 && response.statusCode! < 300){
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

  Future<Response?> resetPassword(String phone) async{
    try{
      var response = await dio.post(
        resetPasswordEndPoint, 
        data: {
          "phone_number": phone,
        }, 
      );
      if(response.statusCode! >= 200 && response.statusCode! < 300){
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

  Future<Response?> deleteAccount() async{
    try{
      var response = await dio.post(
        deleteAccountEndPoint,  
        options: Options(
          headers: {
            "Authorization": "Bearer ${Cache.getToken()}",
          }
        ),
        data: {
          "user_id": Cache.getUserId()
        }
      );
      if(response.statusCode! >= 200 && response.statusCode! < 300){
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

  Future<Response?> logout() async{
    try{
      var response = await dio.post(
        logoutEndPoint,  
        options: Options(
          headers: {
            "Authorization": "Bearer ${Cache.getToken()}",
          }
        ),
      );
      if(response.statusCode! >= 200 && response.statusCode! < 300){
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

