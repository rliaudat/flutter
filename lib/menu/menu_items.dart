import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final String link;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.icon, 
    required this.link});
}

const appMenuItems = <MenuItem> [
  
  MenuItem (
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button
  ),

  MenuItem (
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

MenuItem (
    title: 'ProgressIndicators',
    subtitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

MenuItem (
    title: 'SnackBar',
    subtitle: 'Snackbars y Dialogos',
    link: '/snackbar',
    icon: Icons.info_outline
  ),

MenuItem (
    title: 'Animated container',
    subtitle: 'Statefull widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),

MenuItem (
    title: 'UI Controls + Titles',
    subtitle: 'Controles en flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),

MenuItem (
    title: 'Intro app',
    subtitle: 'tutorial',
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded
  ),

];