import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteProvider extends ChangeNotifier {
  final Set<String> _favorites = {};

  int get count => _favorites.length;

  bool isFavorite(String name) =>
      _favorites.contains(name);

  void toggle(String name) {
    if (_favorites.contains(name)) {
      _favorites.remove(name);
    } else {
      _favorites.add(name);
    }
    notifyListeners();
  }
}

// flutter_riverpod 3.x
final favoriteProvider =
    NotifierProvider<FavoriteNotifier, Set<String>>(
        FavoriteNotifier.new);

class FavoriteNotifier extends Notifier<Set<String>> {
  @override
  Set<String> build() => {};

  void toggle(String name) {
    state = state.contains(name)
        ? ({...state}..remove(name))
        : {...state, name};
  }
}
