import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/details_screen.dart';

import '../model/place.dart';

class VerticalListTile extends StatelessWidget {
  const VerticalListTile({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => DetailsScreen(place: place))),
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(place.imgUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5.0)),
      ),
      title: Text(
        place.title,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        place.subtitle,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }
}
