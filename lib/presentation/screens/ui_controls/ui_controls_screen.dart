import 'package:flutter/material.dart';

class UiControlsScreen  extends StatelessWidget {
  
  static const name = 'ui_controls_screen';

  const UiControlsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('UI Controls'),
      ),
      body: const _UiControlsView(),
    );

  }
}
class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {car, plane, bus, boat}
 
class _UiControlsViewState extends State<_UiControlsView> {
 
 bool isDeveloper = true;
 
 Transportation selectedTransportation = Transportation.car;

 bool breakfast = false;
 bool lunch = false;
 bool dinner = false;

 @override
 Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text ('Developer mode'),
          subtitle: const Text ('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper=!isDeveloper;
          })),

          ExpansionTile(
            title: const Text ('Select transportation'),
            subtitle: Text ('$selectedTransportation'),
            children: [
                        RadioListTile(
            value: Transportation.car, 
            title: const Text('By car'),
            subtitle: const Text ('Viajar en auto'),
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.car;
            }),
          ),

          RadioListTile(
            value: Transportation.plane, 
            title: const Text('By plane'),
            subtitle: const Text ('Viajar en avion'),
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.plane;
            }),
          ),
      
        RadioListTile(
          title: const Text('By bus'),
            subtitle: const Text ('Viajar en bus'),
            value: Transportation.bus, 
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.bus;
            }),
          ),


        RadioListTile(
          title: const Text('By boat'),
            subtitle: const Text ('Viajar en boat'),
            value: Transportation.boat, 
            groupValue: selectedTransportation, 
            onChanged: (value) => setState(() {
              selectedTransportation = Transportation.boat;
            }),
          ),
      

            ],),

      CheckboxListTile(
        title: const Text ('Desayuno'),
        value: breakfast, 
        onChanged: (value) => setState(() {
          breakfast = !breakfast;
        }),
      ),

      CheckboxListTile(
        title: const Text ('Lunch'),
        value: lunch, 
        onChanged: (value) => setState(() {
          lunch = !lunch;
        }),
      ),
      
      CheckboxListTile(
        title: const Text ('Dinner'),
        value: dinner, 
        onChanged: (value) => setState(() {
          dinner = !dinner;
        }),
        
        
        )
      ],
    );
    
  }
}
