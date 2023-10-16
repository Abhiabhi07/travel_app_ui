import 'package:flutter/material.dart';
import 'package:travel_app_ui/model/place.dart';
import 'package:travel_app_ui/widgets/category_tile.dart';
import 'package:travel_app_ui/widgets/horizontal_container.dart';
import 'package:travel_app_ui/widgets/vertical_tile.dart';

import '../widgets/search_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var titleOne = 'Explore';
  var titleTwo =
      'Here you can explore our most popular \nand recommended locations';
  final List<Place> places = [
    Place(
      imgUrl:
          'https://img.freepik.com/free-photo/winter-hiking-adventure-majestic-frozen-cliff-generative-ai_188544-12613.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais',
      title: 'Himalaya',
      subtitle: 'Himalaya mountains, India \$199',
    ),
    Place(
      imgUrl:
          'https://img.freepik.com/premium-vector/mountain-forest-nature-landscape-sunset_104785-1266.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais',
      title: 'Mountain Chill-out',
      subtitle: 'Bali, Indonesia \$499',
    ),
    Place(
      imgUrl:
          'https://img.freepik.com/free-vector/hand-drawn-flat-design-mountain-landscape_23-2149159023.jpg?w=900&t=st=1695538209~exp=1695538809~hmac=17d9a18b1611465b8e25a68dc7ee96080f45c8f8bc4ad7e05629354035b863e3',
      title: 'Ice Mountain',
      subtitle: 'Antarctic, Arctic \$799',
    ),
    Place(
      imgUrl:
          'https://img.freepik.com/free-vector/colored-landscape-cableway-composition-cable-car-sends-groups-top-mountains-against-backdrop-cityscape-vector-illustration_1284-84492.jpg?w=900&t=st=1695538472~exp=1695539072~hmac=c96fbaaa2ad69478eb9a4d193120b0950c981a602162c2d15bbd0b5e7adaccbd',
      title: 'Switzerland',
      subtitle: 'Switzerland, Europe \$399',
    ),
  ];

  final List<Place> places2 = [
    Place(
      imgUrl:
          'https://img.freepik.com/free-vector/india-skyline-with-panorama-sky-background-vector-illustration-business-travel-tourism-concept-with-modern-buildings-collage-from-largest-cities-india_596401-484.jpg?w=900&t=st=1695541075~exp=1695541675~hmac=afe035bbec1e8596e96fe0e1b285c45f72bc8f3cab0eb2ff4607c780a2e4c5c8',
      title: 'India',
      subtitle: 'Tour over india, \$1099',
    ),
    Place(
      imgUrl:
          'https://img.freepik.com/free-vector/united-arab-emirates-poster_1284-14100.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais',
      title: 'Dubai',
      subtitle: 'Dubai, Saudi Arabia \$1299',
    ),
    Place(
      imgUrl:
          'https://img.freepik.com/free-vector/sydney-australia-skyline-with-opera-house-banner_107791-1190.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais',
      title: 'Australia',
      subtitle: 'Australia tour, \$1499',
    ),
    Place(
      imgUrl:
          'https://img.freepik.com/free-vector/auckland-new-zealand-skyline-with-panorama-white-background-vector-illustration-business-travel-tourism-concept-with-modern-buildings-image-presentation-banner-web-site_596401-128.jpg?size=626&ext=jpg&ga=GA1.1.279774976.1695440677&semt=ais',
      title: 'New zealand',
      subtitle: 'New zealand, \$1199',
    ),
  ];

  final List<String> _categories = [
    'Popular',
    'Newest',
    'For you',
    'Recommended',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Text(
                titleOne,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              Text(
                titleTwo,
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 10,
              ),
              SearchTile(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 30,
                  width: 500,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (ctx, i) {
                        return CategoryTile(category: _categories[i]);
                      }),
                ),
              ),
              SizedBox(
                height: 230,
                width: 500,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (ctx, i) {
                      return HorizontalContainer(place: places[i]);
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You might like',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (ctx, i) {
                      return VerticalListTile(
                        place: places2[i],
                      );
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.blueAccent,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.black26,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.black26,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outlined,
                    color: Colors.black26,
                  ),
                  label: ''),
            ]),
      ),
    );
  }
}
