import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>> [
  {'elevation': 0.0, 'label': 'Elevation0'},
  {'elevation': 1.0, 'label': 'Elevation1'},
  {'elevation': 2.0, 'label': 'Elevation2'},
  {'elevation': 3.0, 'label': 'Elevation3'},
];
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Cards Screen')
      ),
      body: const _CardsView()
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ...cards.map(
          (card) => _CardType1(
            elevation: card ['elevation'],
            label: card['label'], 
            ),)
      ],
    );
  }
}

class _CardType1 extends StatelessWidget {
  
  final String label;
  final double elevation;
  
  const _CardType1({
    required this.label, 
    required this.elevation});
    
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon ( Icons.more_vert_rounded))
          ],
        ),),
      
    );
  }
}