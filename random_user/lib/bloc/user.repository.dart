import 'package:random_user/bloc/user_provider.dart';
import 'package:random_user/model/user_model.dart';

class UserRepository {
  Future<UserModel> getUser() {
    UserProvider provider = UserProvider();
    return provider.getUser();
  }
}
