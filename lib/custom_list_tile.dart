import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final Color? textColor;
  final Color? leadingColor;
  final Widget? trailing;
  final VoidCallback? onTap;

  const CustomListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.textColor,
    this.leadingColor,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(color: textColor), // Usa el color de texto opcional
        ),
        leading: Icon(leadingIcon, color: leadingColor),
        trailing: trailing ?? const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
