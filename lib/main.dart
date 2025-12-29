import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/company_controller.dart';
import 'screens/company_list_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(CompanyController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Company Directory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const CompanyListScreen(),
    );
  }
}
