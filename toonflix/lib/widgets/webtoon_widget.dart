import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon(
      {super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailScreen(title: title, thumb: thumb, id: id),
          ),
          // PageRouteBuilder(
          // transitionsBuilder:
          // (context, animation, secondaryAnimation, child) {
          //   var begin = const Offset(1.0, 0.0);
          //   var end = Offset.zero;
          //   var curve = Curves.ease;
          //   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          //   return SlideTransition(
          //     position: animation.drive(tween),
          //     child: child,
          //   );
          // },
          // pageBuilder: (context, anmation, secondaryAnimation) =>
          //       DetailScreen(id: id, title: title, thumb: thumb),
          // ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 240,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                  )
                ],
              ),
              child: Image.network(
                thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
