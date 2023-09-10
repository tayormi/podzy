import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_provider.g.dart';

@riverpod
class FavoriteNotifier extends _$FavoriteNotifier {
  @override
  List<int> build() {
    return [];
  }

  void add(int id) {
    state = [...state, id];
    print(state);
  }
}
