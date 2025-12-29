import 'package:flutter/material.dart';
import '../models/company.dart';
import 'feedback_screen.dart';
import 'package:get/get.dart';

class CompanyDetailScreen extends StatelessWidget {
  final Company company;

  const CompanyDetailScreen({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(company.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CEO: ${company.ceoName}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Industry: ${company.industry}'),
            Text('Employees: ${company.employeeCount}'),
            Text('Country: ${company.country}'),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Get.to(() => const FeedbackScreen()),
              child: const Text('Give Feedback'),
            )
          ],
        ),
      ),
    );
  }
}
