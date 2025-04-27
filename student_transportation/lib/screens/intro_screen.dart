import 'package:flutter/material.dart';
import 'package:student_transportation/shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          children: [
            const Icon(Icons.directions_bus, color: Colors.white),
            const SizedBox(width: 8),
            const Text(
              'Student\nTransportation',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              // TODO: Handle logout
            },
            child: const Text('Log Out', style: TextStyle(color: Colors.white)),
          ),
        ],
        toolbarHeight: 70,
      ),
      drawer: MenuDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const SizedBox(height: 30),
              // Add Student Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to Add Student screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    '+ Add Student',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Students List
              Expanded(
                child: ListView(
                  children: const [
                    StudentTile(
                      name: 'John Doe',
                      school: 'Sunrise Public School',
                      imagePath: 'assets/images/student1.jpg',
                    ),
                    StudentTile(
                      name: 'Jane Smith',
                      school: 'Sunrise Public School',
                      imagePath: 'assets/images/student2.jpg',
                    ),
                    StudentTile(
                      name: 'Emily Johnson',
                      school: 'Sunrise Public School',
                      imagePath: 'assets/images/student3.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentTile extends StatelessWidget {
  final String name;
  final String school;
  final String imagePath;

  const StudentTile({
    Key? key,
    required this.name,
    required this.school,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          school,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        onTap: () {
          // TODO: Action when clicking student
        },
      ),
    );
  }
}
