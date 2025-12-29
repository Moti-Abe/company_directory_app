import 'package:get/get.dart';
import '../models/company.dart';
import '../services/api_service.dart';
import '../services/local_storage_service.dart';

class CompanyController extends GetxController {
  var companies = <Company>[].obs;
  var favorites = <int>[].obs;
  var isLoading = true.obs;
  var error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    try {
      isLoading(true);
      companies.value = await ApiService.fetchCompanies();
      favorites.value = await LocalStorageService.loadFavorites();
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading(false);
    }
  }

  void toggleFavorite(int companyId) {
    if (favorites.contains(companyId)) {
      favorites.remove(companyId);
    } else {
      favorites.add(companyId);
    }
    LocalStorageService.saveFavorites(favorites);
  }

  bool isFavorite(int id) => favorites.contains(id);
}
