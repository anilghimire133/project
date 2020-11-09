
import 'package:project1/Design/navigation.dart';
import 'package:project1/Design/pratice3SignUp.dart';
import 'package:project1/main.dart';

class Routes{
  static const home  ='/';
  static const login  ='/login';
  static const signUp  ='/signup';
 static getRoutes (){
  return{
    Routes.home:(_) => Navigator_Test(),
    Routes.login:(_) => HomePage(),
    Routes.signUp:(_) => SignUpP(),
  };
}
}
