import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int likeCount = 100; // Remplacez par le nombre réel de likes
    int commentCount = 50; // Remplacez par le nombre réel de commentaires
    int shareCount = 30; // Remplacez par le nombre réel de partages

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Image.asset(
            'images/Caftan.jpg', // Remplacez par le chemin réel de votre image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            right: 20,
            top: 300,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      likeCount.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    const Icon(
                      FontAwesomeIcons.commentDots,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      commentCount.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    const Icon(
                      FontAwesomeIcons.share,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      shareCount.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
        );
  }
}
