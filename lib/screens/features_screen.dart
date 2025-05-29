import 'package:flutter/material.dart';

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {
        'title': 'Easy Submissions',
        'description': 'Students can easily submit their applications and required documents through our streamlined process.',
        'icon': Icons.upload_file,
      },
      {
        'title': 'Company Reviews',
        'description': 'Access detailed reviews and ratings of companies from previous interns and employees.',
        'icon': Icons.star,
      },
      {
        'title': 'Digital Certificates',
        'description': 'Receive verified digital certificates upon successful completion of your internship.',
        'icon': Icons.verified,
      },
      {
        'title': 'Secure Payments',
        'description': 'Safe and secure payment processing for all transactions on the platform.',
        'icon': Icons.payment,
      },
      {
        'title': 'Progress Tracking',
        'description': 'Monitor your application status and internship progress in real-time.',
        'icon': Icons.track_changes,
      },
      {
        'title': 'Professional Network',
        'description': 'Connect with industry professionals and build your professional network.',
        'icon': Icons.people,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Features'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: features.length,
        itemBuilder: (context, index) {
          final feature = features[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Icon(
                      feature['icon'] as IconData,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          feature['title'] as String,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          feature['description'] as String,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
} 