import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_search/podcast_search.dart';
import 'package:podzy/ui/home/home_notifier.dart';
import 'package:podzy/ui/home/widgets/podcast_item.dart';

class PodcastSection extends ConsumerWidget {
  const PodcastSection({
    super.key,
    required this.title,
    this.genre = '',
  });

  final String title;
  final String genre;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getGenreRef = ref.watch(getCategoryProvider(category: genre));
    final theme = Theme.of(context);
    return getGenreRef.when(
      data: (SearchResult result) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: theme.textTheme.headlineSmall),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: result.items.length,
                itemBuilder: (context, index) {
                  final item = result.items[index];
                  return PodcastItem(item: item);
                },
              ),
            ),
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
