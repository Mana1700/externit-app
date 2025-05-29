import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = [
      {
        'question': 'What is ExternIT?',
        'answer': 'ExternIT is a platform that connects students with companies for internships and professional development opportunities. We help bridge the gap between academic learning and real-world experience.',
      },
      {
        'question': 'How do I apply for an internship?',
        'answer': 'To apply for an internship, create your profile, browse available opportunities, and submit your application through our platform. Make sure to include all required documents and information.',
      },
      {
        'question': 'Is there a fee to use ExternIT?',
        'answer': 'The basic use of ExternIT is free for students. Companies may have subscription options for posting opportunities and accessing premium features.',
      },
      {
        'question': 'How are companies verified?',
        'answer': 'All companies on ExternIT undergo a verification process to ensure they are legitimate businesses. We verify their business registration, contact information, and other relevant details.',
      },
      {
        'question': 'What happens after I complete my internship?',
        'answer': 'Upon successful completion of your internship, you will receive a digital certificate that verifies your experience. You can also request a reference from your supervisor.',
      },
      {
        'question': 'Can I apply to multiple positions?',
        'answer': 'Yes, you can apply to multiple positions that match your skills and interests. However, we recommend focusing on positions that align with your career goals.',
      },
      {
        'question': 'How do I track my application status?',
        'answer': 'You can track your application status through your dashboard. You will receive notifications when there are updates to your applications.',
      },
      {
        'question': 'What if I need to cancel my application?',
        'answer': 'You can withdraw your application at any time through your dashboard. However, please do so as early as possible to allow other candidates to be considered.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Questions'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          final faq = faqs[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: ExpansionTile(
              title: Text(
                faq['question'] as String,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                  child: Text(
                    faq['answer'] as String,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
} 