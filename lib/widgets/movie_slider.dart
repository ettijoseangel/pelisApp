import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (_, int index) => _MoviePoster()),
          )
        ],
      ),
    );
  }
}

// class _MoviePoster extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 130,
//       height: 190,
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () => Navigator.pushNamed(context, 'details',
//                 arguments: 'movie-instance'),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: const FadeInImage(
//                 placeholder: AssetImage('assets/no-image.jpg'),
//                 image: NetworkImage('https://via.placeholder.com/300x400'),
//                 width: 130,
//                 height: 190,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(height: 5),
//           const Text(
//             'El señor de los anillos: las 77 torres juas juas juas',
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.center,
//           )
//         ],
//       ),
//     );
//   }
// }


class _MoviePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                width: 130,
                height: 150, // Ajusta la altura de la imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: const Text(
              'Aqui hay una pelicula rara. No se cual es, pero es chida.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

