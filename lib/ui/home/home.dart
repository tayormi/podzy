import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_search/podcast_search.dart';
import 'package:podzy/ui/home/home_notifier.dart';
import 'package:podzy/ui/home/widgets/podcast_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getTrendingRef = ref.watch(getTrendingProvider);
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discover', style: theme.textTheme.headlineMedium),
                      const Text('What do you want to hear today?'),
                    ],
                  ),
                  const Icon(CupertinoIcons.search)
                ],
              ),
              const SizedBox(height: 20.0),
              getTrendingRef.when(
                data: (SearchResult result) {
                  return PodcastSection(
                    title: 'Trending',
                    result: result,
                  );
                },
                error: (Object error, StackTrace stackTrace) {
                  return Center(child: Text(error.toString()));
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              SizedBox(
                height: 20,
              ),
              ref.watch(getCategoryProvider(category: 'Business')).when(
                data: (SearchResult result) {
                  return PodcastSection(
                    title: 'Business',
                    result: result,
                  );
                },
                error: (Object error, StackTrace stackTrace) {
                  return Center(child: Text(error.toString()));
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class PodcastSection extends StatelessWidget {
  const PodcastSection({
    super.key,
    required this.title,
    required this.result,
  });

  final String title;
  final SearchResult result;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
  }
}
