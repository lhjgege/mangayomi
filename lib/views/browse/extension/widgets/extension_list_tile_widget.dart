import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mangayomi/utils/lang.dart';

class ExtensionListTileWidget extends StatelessWidget {
  final String sourceName;
  final String lang;
  final bool value;
  final String logoUrl;
  final Function(bool) onChanged;
  const ExtensionListTileWidget(
      {super.key,
      required this.sourceName,
      required this.lang,
      required this.value,
      required this.onChanged,
      required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          onChanged(!value);
        },
        leading: Container(
          height: 37,
          width: 37,
          decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5)),
          child:
              // logoUrl.isEmpty
              //     ?
              const Icon(Icons.source_outlined),
          // : CachedNetworkImage(
          //     imageUrl: logoUrl,
          //     fit: BoxFit.contain,
          //     width: 37,
          //     height: 37,
          //     errorWidget: (context, url, error) {
          //       return const SizedBox(
          //         width: 37,
          //         height: 37,
          //         child: Center(
          //           child: Icon(Icons.source_outlined),
          //         ),
          //       );
          //     },
          //   ),
        ),
        title: Text(sourceName),
        subtitle: Text(
          completeLang(lang.toLowerCase()),
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
        ),
        trailing: Switch(
            value: value,
            onChanged: (value) {
              onChanged(value);
            }));
  }
}
