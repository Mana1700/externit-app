import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About ExternIT'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection(
                context,
                'What is ExternIT?',
                'ExternIT is a revolutionary platform that connects students with companies for internships and professional development opportunities. We bridge the gap between academic learning and real-world experience.',
                Icons.business,
              ),
              const SizedBox(height: 24),
              _buildSection(
                context,
                'Our Mission',
                'To empower students with practical experience and help companies find talented individuals, creating a seamless ecosystem for professional growth and development.',
                Icons.flag,
              ),
              const SizedBox(height: 24),
              _buildSection(
                context,
                'Our Vision',
                'To become the leading platform for student-company connections, fostering innovation and excellence in professional development across industries.',
                Icons.visibility,
              ),
              const SizedBox(height: 24),
              _buildSection(
                context,
                'Our Story',
                'Founded with the belief that practical experience is crucial for student success, ExternIT has grown to become a trusted platform for both students and companies. We continue to innovate and expand our services to better serve our community.',
                Icons.history,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    String content,
    IconData icon,
  ) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
} 