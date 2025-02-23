import 'package:bloc_test/core/network/api_client.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<ApiClient>(ApiClient());
}
