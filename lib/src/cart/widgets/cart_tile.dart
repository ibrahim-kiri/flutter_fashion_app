import 'package:fashion_app/common/utils/kcolors.dart';
import 'package:fashion_app/const/constants.dart';
import 'package:fashion_app/src/cart/controllers/cart_notifier.dart';
import 'package:fashion_app/src/cart/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.cart, this.onDelete, this.onUpdate});

  final CartModel cart;
  final void Function()? onDelete;
  final void Function()? onUpdate;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(
      builder: (context, cartNotifier, child) {
        return GestureDetector(
          onTap: () {
            // Pushing id and cart item to controller
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Container(
              width: ScreenUtil().screenWidth,
              height: 90.h,
              decoration: BoxDecoration(
                color: Kolors.kWhite,
                borderRadius: kRadiusAll,
              ),
              child: SizedBox(
                height: 85.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Kolors.kWhite,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
