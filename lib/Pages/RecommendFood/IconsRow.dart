import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/Cart/Screen/Cart.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

class RecommendedIconsRow extends StatelessWidget {
  const RecommendedIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: GetWidth(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: GetWidthinPixels(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
                ),
                child: const Icon(
                  Icons.clear,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => Cart()),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
