import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'student_form.dart';
import 'student_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information'),
        backgroundColor: Colors.blue, // Set the AppBar color to blue
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Button padding
                textStyle: TextStyle(fontSize: 18, color: Colors.black), // Text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentForm()),
                );
              },
              child: Text(
                'Add Student',
                style: TextStyle(color: Colors.white), // Text color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Button padding
                textStyle: TextStyle(fontSize: 18, color: Colors.black), // Text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentList()),
                );
              },
              child: Text(
                'All Students',
                style: TextStyle(color: Colors.white), // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
