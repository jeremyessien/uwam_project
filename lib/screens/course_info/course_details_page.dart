import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  final String department;
  final String year;
  final String semester;

  CourseDetailsPage({required this.department, required this.year, required this.semester});

  @override
  Widget build(BuildContext context) {
    //TODO: Update the courses to actual ones
    // Define the manually typed course details
    Map<String, Map<String, Map<String, String>>> courseDetails = {
      'Computer Science': {
        '1st Year': {
          '1st Semester': 'Course A, Course B, Course C',
          '2nd Semester': 'Course D, Course E, Course F',
        },
        '2nd Year': {
          '1st Semester': 'Course G, Course H, Course I',
          '2nd Semester': 'Course J, Course K, Course L',
        },
      },
      'Mathematics': {
        '1st Year': {
          '1st Semester': 'Course X, Course Y, Course Z',
          '2nd Semester': 'Course W, Course V, Course U',
        },
        '2nd Year': {
          '1st Semester': 'Course P, Course Q, Course R',
          '2nd Semester': 'Course S, Course T, Course M',
        },
      },
    };

    // Retrieve the course details based on the selected department, year, and semester
    List<String> courseList = courseDetails[department]?[year]?[semester]?.split(", ") ?? [];

    if (courseList.isNotEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Course Details'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Department: $department',
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                'Year: $year',
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                'Semester: $semester',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                'Course Details:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: courseList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(
                        courseList[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Course Details'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'No course details found for the selected department, year, and semester.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }
  }
}
