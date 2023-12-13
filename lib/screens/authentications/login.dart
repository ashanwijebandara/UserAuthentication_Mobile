import 'package:doctorapp/consts/colors.dart';
import 'package:doctorapp/consts/description.dart';
import 'package:doctorapp/consts/styles.dart';
import 'package:doctorapp/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // ref for auth service
  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();
  // email passsword state
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgWhite,
        appBar: AppBar(
          title: Text("Sign In"),
          backgroundColor: bgWhite,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  description,
                  style: descriptionStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: textInputDecoration,
                          validator: (val) =>
                              val?.isEmpty == true ? "Enter an email" : null,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: "password"),
                          validator: (val) =>
                              val!.length < 6 ? "Enter a valid password" : null,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Login with Google",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            // sign in with google
                          },
                          child: Center(
                            child: Image.asset(
                              'assests/googleIcon.png',
                              height: 50,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Do you have an account?",
                              style: descriptionStyle,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              // goto register page
                              onTap: () {},
                              child: Text('Register',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          //methord for login user
                          onTap: () {},
                          child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: textLight,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2, color: textLight),
                              ),
                              child: Center(
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                    color: bgWhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          //methord for login user
                          onTap: () {},
                          child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: textLight,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2, color: textLight),
                              ),
                              child: Center(
                                child: const Text(
                                  "Log As Guest",
                                  style: TextStyle(
                                    color: bgWhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
                //email
                //password
                //google
                //register
                //button
                //anonymous
              ],
            ),
          ),
        ));
  }
}


// ElevatedButton(
//         child: const Text("Sign in anon"),
//         onPressed: () async {
//           dynamic result = await _auth.signInAnon();
//           if (result == null) {
//             print("error signing in");
//           } else {
//             print("signed in");
//             print(result.uid);
//           }
//         },
//       ),