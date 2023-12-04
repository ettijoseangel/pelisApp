import 'package:flutter/material.dart';
import 'package:pelis_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon( Icons.search_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
      children: [
        CardSwiper(),

        MovieSlider(),

  
      ],
        ),
      ),
    );
  }
}