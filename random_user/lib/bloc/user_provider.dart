import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:random_user/model/user_model.dart';
class UserProvider {
  Future<UserModel> getUser() async{
    var url = Uri.parse(
        "https://randomuser.me/api/");
    http.Response? response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      print(e);
    }
    return UserModel.fromJson(jsonDecode(response.body));
  }
}
 