import 'package:flutter/material.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ResumeScreen(),
    );
  }
}

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "My Creative Resume",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Avatar
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.amber,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),
            const SizedBox(height: 12),

            // Name
            const Text(
              "M Inam Ul Haq",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Flutter Developer | Computer Science Student",
              style: TextStyle(fontSize: 16, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Contact Info
            buildCard(Icons.email, "inamulhaq229786@gmail.com", Colors.red),
            buildCard(Icons.phone, "03424896129", Colors.green),

            const SizedBox(height: 16),

            // Education
            sectionTitle("🎓 Education"),
            buildInfo("BS Computer Science - COMSATS Vehari"),
            buildInfo("Intermediate - Superior College"),
            buildInfo("Matric - Govt School"),

            const SizedBox(height: 16),

            // Skills
            sectionTitle("🛠 Skills"),
            buildInfo("• Flutter & Dart"),
            buildInfo("• Java & OOP"),
            buildInfo("• Python (AI & basics)"),
            buildInfo("• HTML & CSS"),

            const SizedBox(height: 16),

            // Experience
            sectionTitle("💼 Experience"),
            buildInfo("• Intern at Software House XYZ"),
            buildInfo("• Made projects in Flutter and Java"),

            const SizedBox(height: 16),

            // Hobbies
            sectionTitle("🎯 Hobbies"),
            buildInfo("• Gym"),
            buildInfo("• Cricket"),
          ],
        ),
      ),
    );
  }

  // 🔹 Reusable Widgets
  static Widget buildCard(IconData icon, String text, Color color) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      color: Colors.yellow[100],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  static Widget sectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
        ),
      ),
    );
  }

  static Widget buildInfo(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}
