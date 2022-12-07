import 'package:flutter/material.dart';
import 'user_prefs.dart';

void main() async {
  UserPrefs.initStorage();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final userPrefs= UserPrefs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[

            ElevatedButton(
              child: const Text(
                'Write Data',
              ),
              onPressed: () async{

                userPrefs.saveUserName("MY USER NAME 88");
                userPrefs.saveUserToken("MY USER TOKEN 88");

              },
            ),

            SizedBox(height: 15,),

            ElevatedButton(
              child: const Text(
                'Read Data',
              ),
              onPressed: () async{
                print("USER NAME====>>> ${userPrefs.userName}");
                print("USER Token====>>> ${userPrefs.userToken}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
