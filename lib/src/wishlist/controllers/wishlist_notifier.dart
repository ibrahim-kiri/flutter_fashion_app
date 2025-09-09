import 'package:fashion_app/common/services/storage.dart';
import 'package:fashion_app/common/utils/environment.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WishlistNotifier with ChangeNotifier {
  void addRemoveWishlist(int id, Function refetch) async {
    final accessToken = Storage().getString('accessToken');

    try {
      Uri url = Uri.parse(
        '${Environment.appBaseUrl}/api/wishlist/toggle/?id=$id',
      );

      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Token $accessToken',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 201) {
        // SET THE ID TO A LIST IN OUR LOCAL STORAGE
        // REFETCH DATA
      } else if (response.statusCode == 201) {
        // REMOVE FROM LOCAL STORAGE
        // REFETCH DATA
      }
    } catch (e) {}
  }
}
