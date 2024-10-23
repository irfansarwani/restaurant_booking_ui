import 'package:flutter/material.dart';
import 'package:restaurant_booking_ui/components/manu_item.dart';
import 'package:restaurant_booking_ui/components/topchip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/149353892?v=4'),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Topchip(lable: 'Healthy', isActive: true),
                  Topchip(lable: 'Italian', isActive: false),
                  Topchip(lable: 'Mexican', isActive: false),
                  Topchip(lable: 'Asian', isActive: false),
                  Topchip(lable: 'Chinese', isActive: false),
                  Topchip(lable: 'Haitian', isActive: false),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: const [
                    ManuItem(
                        title: "Nafees",
                        subTitle: "123 Reviews = S. Oxford 13th",
                        url:
                            "https://cdn.pixabay.com/photo/2023/05/31/11/15/fish-8031138_1280.jpg",
                        rating: 4.5),
                    ManuItem(
                        title: "Smoking Grill",
                        subTitle: "123 Reviews = S. Mirpur 6th",
                        url:
                            "https://cdn.pixabay.com/photo/2017/10/09/17/36/zander-filet-2834177_960_720.jpg",
                        rating: 5.0),
                    ManuItem(
                        title: "Mix Plate",
                        subTitle: "123 Reviews = S. Asifa Bhutto Park",
                        url:
                            "https://cdn.pixabay.com/photo/2015/10/30/17/48/fish-1014511_1280.jpg",
                        rating: 3.9),
                    ManuItem(
                        title: "Ajwa",
                        subTitle: "123 Reviews = S. Asifa Bhutto Park",
                        url:
                            "https://cdn.pixabay.com/photo/2022/05/03/09/02/meal-7171253_640.jpg",
                        rating: 4.8),
                    ManuItem(
                        title: "Golden Grill",
                        subTitle: "123 Reviews = S. Asifa Bhutto Park",
                        url:
                            "https://cdn.pixabay.com/photo/2019/11/10/07/02/pike-perch-4615069_640.jpg",
                        rating: 5.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
