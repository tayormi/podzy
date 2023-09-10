import 'package:podzy/ui/home/providers/favorite_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_podcast_provider.g.dart';

@riverpod
bool favoritePodcast(FavoritePodcastRef ref, int trackId) {
  final favorites = ref.watch(favoriteNotifierProvider);
  return favorites.contains(trackId);
}
