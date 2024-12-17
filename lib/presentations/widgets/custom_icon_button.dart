import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget NavigationScreen;
  final IconData icon;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.NavigationScreen,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NavigationScreen),
          );
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ));
  }
}