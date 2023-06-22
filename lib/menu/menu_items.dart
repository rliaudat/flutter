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


];