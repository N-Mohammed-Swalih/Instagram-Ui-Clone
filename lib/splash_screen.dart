import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import './insta_login_page.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  // splash is initially immutable
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState(); //createState() will creating a mutable(that can occur changes)state for splashscreen
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //what will happen when the page / app is  first launched
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
             LoginPage())); //when timer completes it redirects to home
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Center(
        child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurple,
                    Colors.pink,
                    Colors.orange,
                  ],
                ).createShader(bounds),
            child: FaIcon(
              FontAwesomeIcons.instagram,
              size: 100,
            )),
      ),
      Positioned(
        left: MediaQuery.of(context).size.width * 0.45,
        bottom: MediaQuery.of(context).size.height * 0.13,
        child: Container(
          child: Text("from",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16, 
            ),
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height * 0.0925,
        left: MediaQuery.of(context).size.width * .4,
        child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurple,
                    Colors.pink,
                    Colors.orange,
                  ],
                ).createShader(bounds),
              child: FaIcon(
                FontAwesomeIcons.meta,
                size: 25,
              ),
            )
            ),
           Positioned(
        bottom: MediaQuery.of(context).size.height * 0.0935,
        left: MediaQuery.of(context).size.width * 0.475,
        child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurple,
                    Colors.pink,
                    Colors.orange,
                  ],
                ).createShader(bounds),
              child: Text("Meta",
         style: TextStyle(
          fontSize: 20,
         ),
              ),
            )
            ),
    ]
    )
    );
  }
}
