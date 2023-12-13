import 'package:doctorapp/consts/colors.dart';
import 'package:doctorapp/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // create a object from AuthService class
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: bgWhite,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: bgWhite,
            title: const Text("Home"),
            actions: [
              ElevatedButton(
                onPressed: () async {
                  await _auth.signOut();
                },
                child: const Icon(Icons.logout),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome to Home",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
