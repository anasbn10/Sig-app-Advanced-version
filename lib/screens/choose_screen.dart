import 'package:flutter/material.dart';
import 'package:aan_app/widgets/colors.dart';

class ChoosePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: <Widget>[
            _buildBox(context, 'Subjects'),
            _buildBox(context, 'Exams'),
            _buildBox(context, 'Sig Academy'),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(BuildContext context, String title) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(227, 252, 1, 227),
            color1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // Navigate to the next screen
          Navigator.pushNamed(context, title);
        },
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
