import 'package:flutter/material.dart';
import 'package:todo_app/screens/Home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    gotologin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 22, 134, 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/todo.png",width: 100,height: 100,),
            SizedBox(height: 20,),
            Text("TODO APP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)
            
          ],
        ),
      ),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed( Duration(seconds: 5));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) {
      return Homepage();
    })));

  }
}
