import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_search/podcast_search.dart';
import 'package:podzy/ui/home/providers/favorite_podcast_provider.dart';
import 'package:podzy/ui/home/providers/favorite_provider.dart';

class PodcastItem extends ConsumerWidget {
  const PodcastItem({
    super.key,
    required this.item,
  });
  final Item item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final bool isFavorite =
        ref.watch(favoritePodcastProvider(item.trackId ?? 0)) ?? false;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Column(
              children: [
                CachedNetworkImage(
                  height: 150.0,
                  width: 150.0,
                  imageUrl: item.artworkUrl600 ?? '',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: 150.0,
                  child: Text(
                    item.trackName ?? '',
                    style: theme.textTheme.bodyLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5.0),
                Expanded(
                  child: SizedBox(
                    width: 150.0,
                    child: Text(
                      item.artistName ?? '',
                      style: theme.textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            // Adds a favorite icon to the top right corner of the podcast item
            Positioned(
              top: 10.0,
              right: 10.0,
              child: GestureDetector(
                onTap: () {
                  if (item.trackId != null) {
                    ref
                        .read(favoriteNotifierProvider.notifier)
                        .add(item.trackId!);
                  }
                },
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: theme.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
