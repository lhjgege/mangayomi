import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:isar/isar.dart';
import 'package:mangayomi/main.dart';
import 'package:mangayomi/models/source.dart';
import 'package:mangayomi/modules/browse/sources/widgets/source_list_tile.dart';
import 'package:mangayomi/providers/l10n_providers.dart';
import 'package:mangayomi/sources/source_test.dart';
import 'package:mangayomi/utils/language.dart';
import 'package:mangayomi/modules/more/settings/browse/providers/browse_state_provider.dart';

class SourcesScreen extends ConsumerWidget {
  final bool isManga;
  const SourcesScreen({required this.isManga, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nLocalizations(context)!;
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: StreamBuilder(
            stream: isar.sources
                .filter()
                .idIsNotNull()
                .isAddedEqualTo(true)
                .and()
                .isActiveEqualTo(true)
                .and()
                .isMangaEqualTo(isManga)
                .watch(fireImmediately: true),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: Text(l10n.no_result));
              }
              final entries = snapshot.data!
                  .where((element) => ref.watch(showNSFWStateProvider)
                      ? true
                      : element.isNsfw == false)
                  .where((element) => element.lastUsed == true)
                  .toList();
              final entries1 = snapshot.data!
                  .where((element) => ref.watch(showNSFWStateProvider)
                      ? true
                      : element.isNsfw == false)
                  .where((element) => element.isPinned == true)
                  .toList();
              final entries2 = snapshot.data!
                  .where((element) => ref.watch(showNSFWStateProvider)
                      ? true
                      : element.isNsfw == false)
                  .where((element) => element.isPinned == false)
                  .toList();
              return SingleChildScrollView(
                child: Column(
                  children: [
                    if (useTestSourceCode)
                      SourceListTile(source: testSourceModel, isManga: isManga),
                    GroupedListView<Source, String>(
                      elements: entries,
                      groupBy: (element) => "",
                      groupSeparatorBuilder: (String groupByValue) => Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text(
                              l10n.last_used,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      itemBuilder: (context, Source element) {
                        return SourceListTile(
                          source: element,
                          isManga: isManga,
                        );
                      },
                      shrinkWrap: true,
                      groupComparator: (group1, group2) =>
                          group1.compareTo(group2),
                      itemComparator: (item1, item2) =>
                          item1.name!.compareTo(item2.name!),
                      order: GroupedListOrder.ASC,
                    ),
                    GroupedListView<Source, String>(
                      elements: entries1,
                      groupBy: (element) => "",
                      groupSeparatorBuilder: (String groupByValue) => Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text(
                              l10n.pinned,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      itemBuilder: (context, Source element) {
                        return SourceListTile(
                          source: element,
                          isManga: isManga,
                        );
                      },
                      shrinkWrap: true,
                      groupComparator: (group1, group2) =>
                          group1.compareTo(group2),
                      itemComparator: (item1, item2) =>
                          item1.name!.compareTo(item2.name!),
                      order: GroupedListOrder.ASC,
                    ),
                    GroupedListView<Source, String>(
                      elements: entries2,
                      groupBy: (element) =>
                          completeLanguageName(element.lang!.toLowerCase()),
                      groupSeparatorBuilder: (String groupByValue) => Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text(
                              groupByValue,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      itemBuilder: (context, Source element) {
                        return SourceListTile(
                          source: element,
                          isManga: isManga,
                        );
                      },
                      shrinkWrap: true,
                      groupComparator: (group1, group2) =>
                          group1.compareTo(group2),
                      itemComparator: (item1, item2) =>
                          item1.name!.compareTo(item2.name!),
                      order: GroupedListOrder.ASC,
                    ),
                  ],
                ),
              );
            }));
  }
}
