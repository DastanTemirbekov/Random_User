import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:random_user/bloc/user.repository.dart';
import 'package:random_user/model/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository repository = UserRepository();
  UserBloc(this.repository) : super(UserLoading());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    try {
      if (event is GetUserEvent) {
        yield UserLoading();
        UserModel data = await repository.getUser();
        yield UserLoaded(data);
      }
    } catch (e) {
      UserError(e.toString());
    }
  }
}
