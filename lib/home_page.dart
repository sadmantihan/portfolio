import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Md Sadman Sami Khan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Phone: +8801704776493 | Email: samisadman6@gmail.com',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  CustomButton(
                    title: 'Personal Info',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInfoScreen(),
                        ),
                      );
                    },
                  ),
                  CustomButton(
                    title: 'Skills',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SkillsScreen(),
                        ),
                      );
                    },
                  ),
                  CustomButton(
                    title: 'Education',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EducationScreen(),
                        ),
                      );
                    },
                  ),
                  CustomButton(
                    title: 'Experience',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExperienceScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title),
      ),
    );
  }
}

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Personal Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: Md Sadman Sami Khan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Phone: +8801704776493'),
            Text('Email: samisadman6@gmail.com'),
            Text('Address: Chandpur, Bangladesh'),
          ],
        ),
      ),
    );
  }
}

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('- C/C++ Programming'),
            Text('- Java Programming'),
            Text('- Python and Data Analysis'),
            Text('- Web Development (HTML, CSS, JavaScript Basics)')
          ],
        ),
      ),
    );
  }
}

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Education'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Bsc. Engineering in Computer Science & Engineering'),
            SizedBox(height: 5), // Added spacing for better design
            Text('Graduation Year: 2026'),
          ],
        ),
      ),
    );
  }
}

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Experience'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('- Involved in club organization named Chittagong University Scientific Society'),
            Text('- Freelance Technical Assignments'),
            Text('- Participated in Hackathons, Idea Presentation and Coding Competitions'),
          ],
        ),
      ),
    );
  }
}
