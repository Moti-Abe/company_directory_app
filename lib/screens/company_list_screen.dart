import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/company_controller.dart';
import '../widgets/company_tile.dart';
import '../widgets/loading_indicator.dart';

class CompanyListScreen extends StatelessWidget {
  const CompanyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CompanyController>();

    return Scaffold(
      appBar: AppBar(title: const Text('Companies')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const LoadingIndicator();
        }

        if (controller.error.isNotEmpty) {
          return Center(child: Text(controller.error.value));
        }

        return ListView.builder(
          itemCount: controller.companies.length,
          itemBuilder: (context, index) {
            return CompanyTile(company: controller.companies[index]);
          },
        );
      }),
    );
  }
}
