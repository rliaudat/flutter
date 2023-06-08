import 'package:flutter/material.dart';
import 'package:flutter_widget_app/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }

}

class _HomeView extends StatelessWidget {
  const _HomeView(); // La key no va xq es privada y solo se llama desde aca

  @override
  Widget build(BuildContext context) {
    appMenuItems;

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
        }, 
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon ( menuItem.icon, color: colors.primary),
      trailing: Icon (Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text (menuItem.title),
      subtitle: Text (menuItem.subtitle),
      onTap: () {

      },
      );
  }
}

