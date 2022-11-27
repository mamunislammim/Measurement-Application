import 'package:floating_text/floating_text.dart';
import 'package:flutter/material.dart';
 import 'package:measurement_app/screens/first_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Future<void> _goMainPage() async {
    await Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => const FirstScreen())));
  }

  @override
  void initState() {
    _goMainPage();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.5),
            child: const Text(
              "Powered By :  Mamun Islam",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        //backgroundColor: const Color(0xff000e4b),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [ Color(0xff000e4b), Colors.green],end: Alignment.topLeft,begin: Alignment.bottomRight)
          ),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("images/measurement.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Measurement",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                  Padding(
                    padding: EdgeInsets.only(bottom: 50, top: 100),
                    child: Text(
                      "Please...Wait 5 Seconds",
                      style: TextStyle(color: Colors.tealAccent),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
