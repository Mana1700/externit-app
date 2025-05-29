import 'package:flutter/material.dart';

class HowItWorksScreen extends StatelessWidget {
  const HowItWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('How It Works'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'For Students'),
              Tab(text: 'For Companies'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildStudentSteps(context),
            _buildCompanySteps(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentSteps(BuildContext context) {
    final steps = [
      {
        'title': 'Create Your Profile',
        'description': 'Sign up and create your professional profile with your skills, education, and experience.',
        'icon': Icons.person_add,
      },
      {
        'title': 'Browse Opportunities',
        'description': 'Explore available internships and opportunities from various companies.',
        'icon': Icons.search,
      },
      {
        'title': 'Apply for Positions',
        'description': 'Submit your application and required documents for your desired positions.',
        'icon': Icons.send,
      },
      {
        'title': 'Track Progress',
        'description': 'Monitor your application status and communicate with companies.',
        'icon': Icons.track_changes,
      },
      {
        'title': 'Complete Internship',
        'description': 'Successfully complete your internship and receive your certificate.',
        'icon': Icons.verified,
      },
    ];

    return _buildStepsList(context, steps);
  }

  Widget _buildCompanySteps(BuildContext context) {
    final steps = [
      {
        'title': 'Register Company',
        'description': 'Create your company profile and verify your business details.',
        'icon': Icons.business,
      },
      {
        'title': 'Post Opportunities',
        'description': 'List your internship positions and requirements.',
        'icon': Icons.post_add,
      },
      {
        'title': 'Review Applications',
        'description': 'Review and shortlist student applications.',
        'icon': Icons.rate_review,
      },
      {
        'title': 'Select Candidates',
        'description': 'Choose the best candidates and communicate with them.',
        'icon': Icons.people,
      },
      {
        'title': 'Manage Interns',
        'description': 'Track intern progress and provide feedback.',
        'icon': Icons.manage_accounts,
      },
    ];

    return _buildStepsList(context, steps);
  }

  Widget _buildStepsList(BuildContext context, List<Map<String, dynamic>> steps) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: steps.length,
      itemBuilder: (context, index) {
        final step = steps[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            step['icon'] as IconData,
                            color: Theme.of(context).colorScheme.primary,
                            size: 24,
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            step['title'] as String,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        step['description'] as String,
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
    );
  }
} 