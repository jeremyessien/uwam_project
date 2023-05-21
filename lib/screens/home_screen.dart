import 'package:flutter/material.dart';
import 'package:uwam_project/screens/academic_calendar/academic_calendar.dart';
import 'package:uwam_project/screens/auth/login.dart';
import 'package:uwam_project/screens/course_info/course_info.dart';
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
          TextButton(
            onPressed: _handleLogout,
            child: Text('Logout'),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CourseInformationPage()),
                );
              }, child: Text('Course Info')),


              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AcademicCalendarPage()),
                );
              }, child: Text('Academic Calendar'))
            ],
          ),
        )
      ),
    );
  }
}
