import 'package:flutter_riverpod/legacy.dart';
import 'package:meals_app/models/meal.dart';

class FavoritesMealsNotfier extends StateNotifier<List<Meal>> {
  FavoritesMealsNotfier() : super([]);

  bool toggleMealFavorities(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoritesMealsNotfier, List<Meal>>((ref) {
      return FavoritesMealsNotfier();
    });
