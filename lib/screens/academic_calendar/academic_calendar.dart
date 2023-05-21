import 'package:flutter/material.dart';

class AcademicCalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academic Calendar'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Academic Calendar 2021/2022 Session',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            //TODO: UPDATE THE ACADEMIC DATA WITH CORRECT DATA
            Expanded(
              child: ListView(
                children: [
                  _buildCalendarItem('Monday, 8th May 2023 -', 'Commencement of 2nd Semester 2021/2022\nSession for all students and registration'),
                  _buildCalendarItem('Monday, 8th May - Friday, 26th May, 2023', 'Registration without penalty (3 weeks)'),
                  _buildCalendarItem('Monday 8th May - Friday 28th, July 2023', 'Lectures for all students (12 weeks)'),
                  _buildCalendarItem('Monday 14th Aug - Friday 1st September 2023', '2nd Semester Examinations for all students (3 weeks)'),
                  // Add more calendar items here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendarItem(String timeframe, String title) {
    return ListTile(
      title: Text(timeframe, style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(title),
    );
  }
}
