import 'package:flutter/material.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Center(
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(5, 10, 15, 10),
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Search..',
                  style: TextStyle(color: Colors.black54),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.search_outlined,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
