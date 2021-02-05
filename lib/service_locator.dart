import 'package:get_it/get_it.dart';
import 'package:scoped_model_example/scoped_model/login_model.dart';
import 'package:scoped_model_example/scoped_model/splash_model.dart';

GetIt locator = GetIt();

void setupLocator() {
  // Register services

  // Register models
  locator.registerFactory<SplashModel>(() => SplashModel());
  locator.registerFactory<LoginModel>(() => LoginModel());
}
