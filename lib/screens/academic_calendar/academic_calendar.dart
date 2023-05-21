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
                  _buildCalendarItem('Aug 21-22', 'Orientation'),
                  _buildCalendarItem('Sep 3', 'Semester Begins'),
                  _buildCalendarItem('Dec 17-23', 'Examination Period'),
                  _buildCalendarItem('Dec 24 - Jan 2', 'Christmas Break'),
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
      title: Text(timeframe),
      subtitle: Text(title),
    );
  }
}
