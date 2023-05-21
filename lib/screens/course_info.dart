import 'package:flutter/material.dart';

class CourseInformationPage extends StatefulWidget {
  const CourseInformationPage({Key? key}) : super(key: key);

  @override
  _CourseInformationPageState createState() => _CourseInformationPageState();
}

class _CourseInformationPageState extends State<CourseInformationPage> {
  String? _selectedDepartment;
  String? _selectedYear;
  String? _selectedSemester;

  final List<String> departments = [
    'Computer Science',
    'Mathematics',
    'Physics',
    'Chemistry',
  ];

  final List<String> years = ['1st Year', '2nd Year', '3rd Year', '4th Year'];

  final List<String> semesters = ['1st Semester', '2nd Semester'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Information'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButtonFormField<String>(
                value: _selectedDepartment,
                onChanged: (value) {
                  setState(() {
                    _selectedDepartment = value;
                  });
                },
                items: departments.map((department) {
                  return DropdownMenuItem<String>(
                    value: department,
                    child: Text(department),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Department',
                ),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedYear,
                onChanged: (value) {
                  setState(() {
                    _selectedYear = value;
                  });
                },
                items: years.map((year) {
                  return DropdownMenuItem<String>(
                    value: year,
                    child: Text(year),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Year',
                ),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedSemester,
                onChanged: (value) {
                  setState(() {
                    _selectedSemester = value;
                  });
                },
                items: semesters.map((semester) {
                  return DropdownMenuItem<String>(
                    value: semester,
                    child: Text(semester),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Semester',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _handleCourseInformationSubmit,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleCourseInformationSubmit() {
    if (_selectedDepartment != null &&
        _selectedYear != null &&
        _selectedSemester != null) {
      // Perform any actions you need based on the selected department, year, and semester
      // You can fetch and display the relevant course information here
      print('Department: $_selectedDepartment');
      print('Year: $_selectedYear');
      print('Semester: $_selectedSemester');
      // TODO: Implement fetching and displaying course information
    } else {
      // TODO: Show an error message indicating that all fields are required
    }
  }
}
