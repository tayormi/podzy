import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_search/podcast_search.dart';

final podcastServiceProvider = Provider<PodcastService>((ref) {
  final search = Search();
  return PodcastService(search);
});

class PodcastService {
  final Search search;

  PodcastService(
    this.search,
  );

  Future<SearchResult> searchPodcasts([
    String term = '',
    int limit = 10,
    Country country = Country.none,
    Attribute attribute = Attribute.none,
    Language language = Language.none,
    bool explicit = false,
  ]) async {
    final results = await search.search(
      term,
      limit: limit,
      country: country,
      attribute: attribute,
      language: language,
      explicit: explicit,
    );
    return results;
  }

  Future<Podcast> getPodcast(String feedUrl) async {
    final item = await Podcast.loadFeed(url: feedUrl);
    return item;
  }

  Future<SearchResult> getCharts({
    int limit = 20,
    Country country = Country.none,
    bool explicit = false,
    String genre = '',
  }) async {
    final charts = await search.charts(
      limit: limit,
      country: country,
      explicit: explicit,
      genre: genre,
    );
    return charts;
  }
}
