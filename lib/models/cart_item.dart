import 'package:get/get.dart';
import 'package:get_flutter_fire/models/product.dart';

class CartItem {
  final Product product;
  RxInt quantity;

  CartItem({required this.product, required int quantity})
      : quantity = quantity.obs;

  Map<String, dynamic> toJson() {
    return {
      'product': product.toJson(),
      'quantity': quantity.value,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      product: Product.fromJson(json['product']),
      quantity: json['quantity'],
    );
  }
}









// import 'package:get/get.dart';
// import 'product.dart';

// class CartItem {
//   final Product product;
//   final RxInt quantity;

//   CartItem({
//     required this.product,
//     required this.quantity,
//   });
// }
