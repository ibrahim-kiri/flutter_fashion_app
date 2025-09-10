import 'package:fashion_app/common/services/storage.dart';
import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/common/utils/kstrings.dart';
import 'package:fashion_app/common/widgets/app_style.dart';
import 'package:fashion_app/common/widgets/reusable_text.dart';
import 'package:fashion_app/src/auth/views/login_screen.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return const LoginPage();
    }
    return Scaffold(
      appBar: AppBar(
        title: ReusableText(
          text: AppText.kCart,
          style: appStyle(15, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
      body: Center(child: Text("Cart Page")),
    );
  }
}
