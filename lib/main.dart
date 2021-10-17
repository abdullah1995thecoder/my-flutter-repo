import 'package:flutter/material.dart';
import 'package:messageapp_01/screens/chat_screen.dart';
import 'package:messageapp_01/screens/registertion_screen.dart';
import 'package:messageapp_01/screens/signin_screen.dart';
import 'package:messageapp_01/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MessageMe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ChatScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        RegistertionScreen.screenRoute: (context) => RegistertionScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen(),
      },
    );
  }
}
