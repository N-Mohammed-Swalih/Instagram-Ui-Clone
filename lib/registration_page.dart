import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MaterialApp(
    home: RegistrationPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Center(
            child 
             :Text("Registration Page"),
        ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                top: 0,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon:const Icon(Icons.person),
                  labelText: "First Name",
                  hintText: "Enter your first name",
                  helperText: "*Cannot be empty"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                top: 0,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon:const Icon(Icons.person),
                  labelText: "Last Name",
                  hintText: "Enter your last name",
                  helperText: "*Cannot be empty"
                ),
              ),
            ),
            Padding(
             padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                top: 0,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon:const Icon(Icons.mail),
                  labelText: "Email",
                  hintText: "Enter your mail here",
                  helperText: "*Email must be valid"
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                top: 0,
                bottom: 10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.phone),
                  labelText: "Mobile Number",
                  hintText: "Enter your mobile number",
                  helperText: "*Mobile Number must contain 10 digits",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                top: 0,
                bottom: 10,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon:const Icon(Icons.password),
                  labelText: "Password",
                  hintText: "Enter Password",
                  helperText: "*Password must contain 8 characters",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                top: 0,
                bottom: 10,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.password),
                  labelText: "Confirm Password",
                  hintText: "Re-enter Password",
                  helperText: "*Re-enter your password",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child:const Text("Sign Up"),
            )
          ]),
        ));
  }
}
