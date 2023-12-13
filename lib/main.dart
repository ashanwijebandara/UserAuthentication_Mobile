import 'package:doctorapp/models/UserModel.dart';
import 'package:doctorapp/screens/wrapper.dart';
import 'package:doctorapp/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyBzVDFE4E3OO2pXCKkcIZg_sMdwjmLjYsk',
        messagingSenderId: '259497034758',
        projectId: 'doctor-appointment-test',
        appId: '1:259497034758:android:6c878365990fbfe4172f87'),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(uid: ""),
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
