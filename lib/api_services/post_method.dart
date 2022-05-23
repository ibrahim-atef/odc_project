import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:odc_project/model/login_respose_model.dart';
import 'package:odc_project/model/register_response_model.dart';
import 'package:odc_project/utilites/my_strings.dart';

class PostMethods {
  Future<RegisterResponseModel> registerPostMethod({

    required Map<String, dynamic> data,
  }) async {
    var response = await http.post(Uri.parse(baseUrl + "register"), body: data);
    var RespnseBody = jsonDecode(response.body);
    RegisterResponseModel responseModel =
        RegisterResponseModel.fromJson(RespnseBody);
    return responseModel;
  }

  Future<LoginResponseModel> loginPostMethod({

    required Map<String, dynamic> data,
  }) async {
    var response = await http.post(Uri.parse( baseUrl + "login"), body: data);
    var RespnseBody = jsonDecode(response.body);
    LoginResponseModel responseModel = LoginResponseModel.fromJson(RespnseBody);
    return responseModel;
  }
}
