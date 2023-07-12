import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Slideinfo {

   final String title;
   final String caption;
   final String imageURL;

  Slideinfo(this.title, this.caption, this.imageURL); 
  }

final slides = <Slideinfo>[
  Slideinfo('Busca la comida', 'caption', 'assets/images/1.png'),
  Slideinfo('Rodrigo', 'Liaudat', 'assets/images/2.png'),
  Slideinfo('Glenda', 'Castillo', 'assets/images/3.png')
];

class TutorialScreen  extends StatelessWidget {
  
  


  static const name = 'tutorial_screen';

  const TutorialScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title, 
                caption: slideData.caption, 
                imageURL: slideData.imageURL)
                ).toList()
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text ('Salir'),
              onPressed: () => context.pop(),
              )
            )
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  
  final String title;
  final String caption;
  final String imageURL;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageURL
  });

  
  @override
  Widget build(BuildContext context) {
    
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    
    
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image( image: AssetImage( imageURL )),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height:10),
            Text(caption, style: captionStyle)
          ],
        ),
      ),
    );
  }
}