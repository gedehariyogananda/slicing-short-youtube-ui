import 'package:flutter/material.dart';
import 'package:post_test/pages/bottom_page.dart';
import 'package:post_test/pages/image_page.dart';
import 'package:post_test/pages/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(kToolbarHeight), // Set tinggi AppBar
          child: AppBar(
            backgroundColor: Colors.black,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          children: const [
            Stack(
              children: [
                ImagePage(
                    images:
                        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                MainPage(
                    like: "110 Likes",
                    dislike: "110 Dislikes",
                    chat: "100 Chat",
                    share: "121 Shared",
                    kurikulum: "Frontend"),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: BottomPage(
                    name: "FrontEnd",
                    image: 'https://randomuser.me/api/portraits/men/2.jpg',
                    subscribe: "100Rb Subs",
                    harga: "Rp. 50.000",
                    caption: "mata kuliah frontend dev",
                    caption2: "Memperlajari Frontend Dev",
                    caption3: "Frontend Deveopment",
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                ImagePage(
                  images:
                      'https://media.istockphoto.com/id/1182428375/id/foto/pegunungan-alpen-italia-saat-matahari-terbenam-pegunungan-berkisar-di-dekat-tre-cime-di.jpg?s=1024x1024&w=is&k=20&c=NTKMWpIs5_cH2DmjBGXf1-XJQqEqGD0qTj2-MW2_pYI=',
                ),
                MainPage(
                    like: "100 Likes",
                    dislike: "100 Dislikes",
                    chat: "100 Chat",
                    share: "100 Shared",
                    kurikulum: "Workshop"),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: BottomPage(
                    name: "WPPL",
                    image: 'https://randomuser.me/api/portraits/men/1.jpg',
                    subscribe: "100Rb Subs",
                    harga: "Rp. 50.000",
                    caption: "mata kuliah WPPL",
                    caption2: "Memperlajari WPPL",
                    caption3: "WPPL Deveopment",
                  ),
                ),
              ],
            ),
             Stack(
              children: [
                ImagePage(
                  images:
                      'https://st4.depositphotos.com/4678277/21940/i/1600/depositphotos_219409488-stock-photo-profile-side-full-length-legs.jpg',
                ),
                MainPage(
                    like: "100 Likes",
                    dislike: "100 Dislikes",
                    chat: "100 Chat",
                    share: "100 Shared",
                    kurikulum: "Workshop"),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: BottomPage(
                    name: "WPPL",
                    image: 'https://randomuser.me/api/portraits/men/1.jpg',
                    subscribe: "100Rb Subs",
                    harga: "Rp. 50.000",
                    caption: "mata kuliah WPPL",
                    caption2: "Memperlajari WPPL",
                    caption3: "WPPL Deveopment",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
