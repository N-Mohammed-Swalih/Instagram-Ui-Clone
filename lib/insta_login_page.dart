import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice/home_page.dart';
import 'package:practice/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey, // this key used to fetch the current state of the form
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/instaloginpagelogo.png",
              width: 200,height: 200,),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0)
                    ),
                      labelText: "Phone number,email or username",
                      ),
                  validator: (username) {
                    if (username!.isEmpty || !username.contains('@')) {
                      return 'Empty/Invalid';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: TextFormField(
                  obscureText: nopasswordvisibility,
  
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return 'Empty / Invalid';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (nopasswordvisibility == true) {
                                nopasswordvisibility = false;
                              } else {
                                nopasswordvisibility = true;
                              }
                            });
                          },
                          icon: Icon(nopasswordvisibility == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
               
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      labelText: "Password"),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.07)
                  ),
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Invalid Username or Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM_LEFT,
                            // timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: Text("Login")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrationPage()));
                    },
                    child: Text("Don't have an account?Sign up.")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
