import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podzy/ui/home/widgets/podcast_section.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              PodcastSection(
                title: 'Trending',
              ),
              SizedBox(
                height: 20,
              ),
              PodcastSection(
                title: 'Business',
                genre: 'Business',
              ),
              SizedBox(
                height: 20,
              ),
              PodcastSection(
                title: 'Religion',
                genre: 'religion',
              )
            ]),
          ),
        ),
      ),
    );
  }
}
