import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  final List<Map<String, dynamic>> subjects = [
    {
      'title': 'Math',
      'description': 'Algebra, Geometry, and more',
      'icon': Icons.calculate,
      'progress': 0.0,
    },
    {
      'title': 'Physik',
      'description': 'Physics concepts and theories',
      'icon': Icons.science,
      'progress': 0.0,
    },
    {
      'title': 'Deutsch',
      'description': 'German language and grammar',
      'icon': Icons.language,
      'progress': 0.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1.5, // Adjusted to fit new widgets
          ),
          itemCount: subjects.length,
          itemBuilder: (context, index) {
            return _buildBox(context, subjects[index]);
          },
        ),
      ),
    );
  }

  Widget _buildBox(BuildContext context, Map<String, dynamic> subject) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 183, 255, 68), Colors.lightBlue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // Navigate to the next screen
          Navigator.pushNamed(context, subject['title']);
        },
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                subject['icon'],
                size: 40,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                subject['title'],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                subject['description'],
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              Spacer(),
              LinearProgressIndicator(
                value: subject['progress'],
                backgroundColor: Colors.white24,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                '${(subject['progress'] * 100).toInt()}% completed',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
