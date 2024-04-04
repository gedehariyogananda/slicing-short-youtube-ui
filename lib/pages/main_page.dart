import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String like;
  final String dislike;
  final String chat;
  final String share;
  final String kurikulum;

  const MainPage(
      {super.key,
      required this.like,
      required this.dislike,
      required this.chat,
      required this.share,
      required this.kurikulum});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment:
              Alignment.centerRight, // Ikon-ikon ditempatkan di kanan bawah
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                ),
              ),
              Text(
                like,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_down,
                  color: Colors.white,
                ),
              ),
              Text(
                dislike,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: Colors.white,
                ),
              ),
              Text(
                chat,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              Text(
                share,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              ),
              Text(
                kurikulum,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
