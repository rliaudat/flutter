import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Buttons Screen')
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon ( Icons.arrow_back_ios_new_outlined),
        onPressed: (){
          context.pop();
        },
      ),

    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Esto es para distribuir botones en pantallas
        child: Wrap(
            spacing: 10, // Esto se asegura de separar entre botones
            crossAxisAlignment: WrapCrossAlignment.center, // Para alinear vertical tmb
            alignment: WrapAlignment.center,
          children: [
            
            ElevatedButton(onPressed: (){}, child: const Text ('Elevated button')),
            const ElevatedButton(onPressed: null, child: Text ('Elevated disabled')),
          
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text ('Elevated Icon')),

              const CustomButton(),

              FilledButton(onPressed: (){}, child: const Text ('Filled')),
              FilledButton.icon(
                onPressed: (){}, 
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text ('Rodrigo'))
          ],
        ),
        
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text ('Hola mundo'))
      );
  }
}