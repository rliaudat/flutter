import 'package:flutter/material.dart';


class SnackbarScreen  extends StatelessWidget {
  
  static const name = 'snackbar_screen';

  const SnackbarScreen ({super.key});

void openDialog (BuildContext context) {

  showDialog(
    context: context, 
    builder: ((context) => 
    const AlertDialog(
      title: Text ('¿Estas seguro?'),
      content: Text ('Rodrigo'),
    )
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Snackbar y diaglogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                  showAboutDialog(context: context);
              },
              child: const Text ('Licencias usadas'),),
          
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text ('Dialogo'),)
          
          
          ],
        )
      ),



      floatingActionButton: FloatingActionButton.extended(
        label: const Text ('Mostrar snackbar'),
        icon: const Icon (Icons.remove_red_eye_rounded),
        onPressed: () {
          
          ScaffoldMessenger.of(context).clearSnackBars();
          
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text ('Hola Mundo')));
        }, 
        ),
    );
  }
}