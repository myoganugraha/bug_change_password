
import 'package:flutter/material.dart';



class ChangePasswordPage extends StatefulWidget{
  static String tag = 'change-password-page';

  bool _obscurePassword = true;
  final String label;
  final TextEditingController passwordController = new TextEditingController();

  @override
  _ChangePasswordPageState createState() => new _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage>{
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final newPasswordVerifController = TextEditingController();

  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        shrinkWrap: false,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:18.0, left: 20.0, right: 102.0),
            child: Container(
              height: 27.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(
                      context);
                    },
                    child: Icon(Icons.navigate_before, color: Colors.black)
                  ),
 
                  Text(
                    "Change Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'assets/fonts/SF-Pro-Display-Regular.otf'
                    ),
                  )
                ],
              ),
            ),
          ),
 
          Padding(
            padding: EdgeInsets.only(top: 44.0, left: 118.0, right:118.0),
            
          ),
 
          Padding(
            padding: EdgeInsets.only(top: 52.0, left:25.0, right: 25.0),
            child: TextFormField(
              controller: widget.passwordController,
              obscureText: widget._obscurePassword,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                labelText: "Old Password",
                suffixIcon: new GestureDetector(
                  onTap: (){
                    setState((){
                      widget._obscurePassword = !widget._obscurePassword;
                    });
                  },
                  child: new Icon(widget._obscurePassword ? Icons.visibility : Icons.visibility_off),
                )
              ),
               
              style: TextStyle(fontSize:16.0,
              color: Colors.orangeAccent),
 
              )
          ),
 
          Padding(
            padding: EdgeInsets.only(top: 24.0, left:25.0, right: 25.0),
            child: TextFormField(
              controller: widget.passwordController,
              obscureText: widget._obscurePassword,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                labelText: "New Password",
                suffixIcon: new GestureDetector(
                  onTap: (){
                    setState((){
                      widget._obscurePassword = !widget._obscurePassword;
                    });
                  },
                  child: new Icon(widget._obscurePassword ? Icons.visibility : Icons.visibility_off),
                )
              ),
               
              style: TextStyle(fontSize:16.0,
              color: Colors.orangeAccent),
 
              )
          ),
 
          Padding(
            padding: EdgeInsets.only(top: 24.0, left:25.0, right: 25.0, bottom: 60.0),
            child: TextFormField(
              controller: widget.passwordController,
              obscureText: widget._obscurePassword,
              autofocus: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                labelText: "Re-type New Password",
                suffixIcon: new GestureDetector(
                  onTap: (){
                    setState((){
                      widget._obscurePassword = !widget._obscurePassword;
                    });
                  },
                  child: new Icon(widget._obscurePassword ? Icons.visibility : Icons.visibility_off),
                )
              ),
               
              style: TextStyle(fontSize:16.0,
              color: Colors.orangeAccent),
 
              )
          ),
 
          Padding(
              padding: EdgeInsets.only(right:25.0, left: 25.0,),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.black,
                elevation: 5.0,
                child: MaterialButton(
                  minWidth: 310.0,
                  height: 40.0,
                  onPressed: (){},
                  color: Colors.orangeAccent,
                  child: Text(
                    "Change Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'assets/fonts/SF-Pro-Display-Medium.otf'
                  ),
                ),
              )
            ),
          ),
        ],
 
      )
     
    );
  }
}
