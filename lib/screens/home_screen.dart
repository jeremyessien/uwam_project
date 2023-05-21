import 'package:flutter/material.dart';
import 'package:uwam_project/screens/auth/login.dart';
import 'package:uwam_project/screens/course_info.dart';
import '../services/auth_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _authService = AuthService();

  //Method that handles Logout
  Future<void> _handleLogout() async {
    await _authService.signOut();
    // Navigate to the login or signup screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: _handleLogout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseInformationPage()),
              );
            }, child: Text('Course Info'))
          ],
        )
      ),
    );
  }
}
