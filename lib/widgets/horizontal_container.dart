import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/details_screen.dart';

import '../model/place.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (ctx) => DetailsScreen(
                      place: place,
                    )),
          );
        },
        child: Container(
          height: 200,
          width: 230,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.lightBlue,
                      image: DecorationImage(
                          image: NetworkImage(place.imgUrl), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              Expanded(
                child: Container(
                  //  color: Colors.black12,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(4),
                    title: Text(
                      place.title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      place.subtitle,
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
