import 'package:bug_change_password/change_password_view.dart';
import 'package:flutter/material.dart';





void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  /*final routes = <String, WidgetBuilder>{
    LoginView.tag: (context) => LoginView(),
    HomePage.tag: (context) => HomePage(),
    ProfilePage.tag: (context) => ProfilePage(),
    EditProfilePage.tag: (context) => EditProfilePage(),
  };*/

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: '',
        theme: ThemeData(
          primaryColor: Colors.blue),
        home: ChangePasswordPage(),
        //routes: routes,
        
    );
  }

  
}
