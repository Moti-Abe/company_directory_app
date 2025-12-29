import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const String _favoritesKey = 'favorites';

  static Future<void> saveFavorites(List<int> ids) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
        _favoritesKey, ids.map((e) => e.toString()).toList());
  }

  static Future<List<int>> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList(_favoritesKey) ?? [];
    return data.map((e) => int.parse(e)).toList();
  }
}
