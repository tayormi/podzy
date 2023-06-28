import 'package:podcast_search/podcast_search.dart';
import 'package:podzy/core/services/podcast_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@riverpod
Future<SearchResult> getTrending(GetTrendingRef ref) async {
  final podcastService = ref.read(podcastServiceProvider);
  final result = await podcastService.getCharts();
  return result;
}
