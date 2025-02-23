import 'package:bloc_test/core/network/api_client.dart';
import 'package:dartz/dartz.dart';

import '../../../../service_locator.dart';

abstract class AuthApiService {
  Future<Either> signup();
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signup() {
    try {
      sl<ApiClient>().post("signup", body: {});
    } catch (e) {}
    throw UnimplementedError();
  }
}
