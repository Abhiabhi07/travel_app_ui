import 'package:flutter/material.dart';
import 'package:travel_app_ui/model/place.dart';

class DetailsScreen extends StatelessWidget {
   const DetailsScreen({super.key, required this.place});

  final Place place;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
            Positioned(
                top: 0,
                height: 450,
                width: 500,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(place.imgUrl),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                top: 400,
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: const EdgeInsets.only(left: 24.0, top: 12),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        tileColor: Colors.blue,
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          place.title,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        ),
                        subtitle: Text(
                          place.subtitle,
                          style: TextStyle(color: Colors.black54),
                        ),
                        trailing: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              )),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.pinkAccent,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Trip plan',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Container(
                        height: 75,
                        margin: const EdgeInsets.all(10.0),
                        // width: double.infinity,
                        //  color: Colors.green,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (ctx, i) {
                              return Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(2),
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                            width: 1.5, color: Colors.black26)),
                                    child: Center(
                                      child: Text('Day $i'),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_right,
                                      size: 30, color: Colors.black26)
                                ],
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Fiction-writing specifically has modes such as action, exposition, description, dialogue, summary, and transition. Author Peter Selgin refers to methods, including action, dialogue, thoughts, summary, scenes, and description. Currently, there is no consensus within the writing community regarding the number and composition of fiction-writing modes and their uses.',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 30,
              left: 20,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white24,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.lightBlueAccent,
            extendedPadding: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: Colors.white70, child: Icon(Icons.book)),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'BOOK NOW',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )),
      ),
    );
  }
}
