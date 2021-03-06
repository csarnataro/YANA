import 'package:flutter/material.dart';

class NoteTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onTapTile;

  const NoteTile({Key key, this.title, this.subtitle, this.onTapTile})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: ListTile(
              title: Text(title),
              subtitle: Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              onTap: onTapTile),
        ),
      ),
    );
  }
}
