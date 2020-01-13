import 'package:flutter/material.dart';
import 'package:my_app/src/themes/background_app_theme.dart';

class LoginPage extends StatelessWidget {
  var _usernameTextField = TextEditingController();
  var _passwordTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: BackgroundAppTheme.backgroundPrimary,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 75),
            Image.asset('assets/images/header_home.png'),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Card(
                  elevation: 10,
                  margin: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 32,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            icon: Icon(Icons.email),
                          ),
                          controller: _usernameTextField,
                        ),
                        Divider(
                          height: 8,
                          indent: 22,
                          thickness: 1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            icon: Icon(Icons.lock),
                          ),
                          controller: _passwordTextField,
                        ),
                        SizedBox(height: 28),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 220,
                  height: 60,
                  margin: EdgeInsets.only(top: 160),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        BackgroundAppTheme.endColor,
                        BackgroundAppTheme.startColor,
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: BackgroundAppTheme.endColor,
                        offset: Offset(1.0, 6.0),
                        blurRadius: 10.0,
                      ),
                      BoxShadow(
                        color: BackgroundAppTheme.startColor,
                        offset: Offset(1.0, 6.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: FlatButton(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      print(_usernameTextField.text);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            FlatButton(
              child: Text(
                "Forgot Password ?",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
            buildSocial(),
          ],
        ),
      ),
    );
  }

  Row buildSocial() {
    final lineGradient = Container(
      width: 100,
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.grey],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0, 0.8],
        ),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        lineGradient,
        Text(
          "Or",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        lineGradient,
      ],
    );
  }
}
