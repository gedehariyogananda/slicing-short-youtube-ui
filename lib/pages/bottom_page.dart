import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  final String name;
  final String subscribe;
  final String harga;
  final String caption;
  final String caption2;
  final String caption3;
  final String image;

  const BottomPage(
      {super.key,
      required this.name,
      required this.subscribe,
      required this.harga,
      required this.caption,
      required this.caption2,
      required this.caption3,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 40.0, 50.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Menjadikan elemen berada di pojok kiri
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                name,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "subscribe",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                subscribe,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 30),
              Text(
                harga,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            caption2,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            caption3,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
