import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/company.dart';
import '../controllers/company_controller.dart';
import '../screens/company_detail_screen.dart';

class CompanyTile extends StatelessWidget {
  final Company company;

  const CompanyTile({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CompanyController>();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(company.name),
        subtitle: Text(company.industry),
        trailing: Obx(() => IconButton(
          icon: Icon(
            controller.isFavorite(company.id)
                ? Icons.favorite
                : Icons.favorite_border,
            color: Colors.red,
          ),
          onPressed: () =>
              controller.toggleFavorite(company.id),
        )),
        onTap: () => Get.to(() => CompanyDetailScreen(company: company)),
      ),
    );
  }
}
