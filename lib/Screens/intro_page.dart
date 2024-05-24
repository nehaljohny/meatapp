import 'package:flutter/material.dart';
import 'login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30,bottom: 30,top: 30),
                child: Image.asset("assets/images/meatlogo.png",
                height: 400,
                width: 400,),
              ),
              const Text("We deliver fresh meats at your doorstep",
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 40,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold, ),),
              const SizedBox(
                height: 30,
              ),
              const Text("Fresh items everyday",
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold, ),),
              Spacer(),
              // get started button
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepPurpleAccent ,
                  ),
                  child:  const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                         fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer()
            ],
          ),
        )
    );
  }
}