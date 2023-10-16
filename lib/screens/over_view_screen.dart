import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

import '../model/category.dart';
import '../widgets/custom_row.dart';

class OverViewScreen extends StatelessWidget {
  OverViewScreen({super.key});

  List<Category> categoryList = [
    Category(
      title: 'Trekking',
      icon:
          'https://img.freepik.com/free-vector/rural-landscape-with-mountains-beach_23-2147506704.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais',
    ),
    Category(
      title: 'Shooting',
      icon:
          'https://media.istockphoto.com/id/1291909001/vector/photo-camera-with-flash-vector-icon-isolated-photo-camera-flat-colored-illustration-symbol.jpg?s=612x612&w=0&k=20&c=4y83OEmUybm_LbK2T-DfluPRXPutKP9Sace6lmr2Be4=',
    ),
    Category(
        title: 'Sunbathing',
        icon:
            'https://img.freepik.com/free-vector/flat-summer-illustration-with-woman-reading-book-beach-chair_23-2149436233.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais'),
    Category(
      title: 'Wandering',
      icon:
          'https://img.freepik.com/free-vector/eco-tourism-concept_23-2148647260.jpg?size=626&ext=jpg&ga=GA1.2.279774976.1695440677&semt=ais',
    ),
    Category(
      title: 'Eating',
      icon:
          'https://img.freepik.com/free-vector/hand-drawn-delicious-locro-illustration_23-2149218841.jpg?w=900&t=st=1695535192~exp=1695535792~hmac=113efca35afe92d425249ec3956df45c346fa7a68c36d7cb249c62c1cfee6ecc',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
                height: 150,
                width: 500,
                child: Container(
                  color: Color(0xffF5FAFF),
                )),
            Positioned(
                top: 144,
                height: 700,
                width: MediaQuery.of(context).size.width * 1,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Hey there!',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Text(
                        'Please let us know what type of activities  \n you like the most, so we can prepare some \n awesome destinations for you!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black38),
                      ),
                      // CustomRow()
                      SizedBox(
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 22),
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 3 / 1,
                              ),
                              itemCount: categoryList.length,
                              itemBuilder: (ctx, i) {
                                return Container(
                                  // height: 60,
                                  margin: EdgeInsets.all(6),
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      border: Border.all(color: Colors.black45),
                                      borderRadius:
                                          BorderRadius.circular(35.0)),
                                  child: Container(
                                    // width: 130,
                                    // color: Colors.brown,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              categoryList[i].icon),
                                          backgroundColor: Colors.red,
                                        ),
                                        // Expanded(
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       color: Colors.red,
                                        //       image: DecorationImage(image: NetworkImage(categoryList[i].icon), fit: BoxFit.contain),
                                        //       borderRadius: BorderRadius.circular(20.0)
                                        //     ),
                                        //   ),
                                        // ),
                                        Text(
                                          categoryList[i].title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 100,
                height: 80,
                width: MediaQuery.of(context).size.width * 1,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://img.freepik.com/premium-vector/waving-yellow-cartoon-hand-greeting-goodbye-gesture-icon-web-sticker-chatting-messenger_168129-1983.jpg?w=900',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 1.0)
                      ]),
                )),
            Positioned(
                bottom: 100,
                height: 60,
                left: 90,
                width: 200,
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                          backgroundColor: Colors.lightBlueAccent),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => HomeScreen()));
                      },
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                )),
            Positioned(
              bottom: 40,
              left: 140,
              child: Text(
                'Skip for now',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
