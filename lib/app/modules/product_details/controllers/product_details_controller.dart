import 'package:get/get.dart';
import 'package:get_flutter_fire/models/cart_item.dart'; 
import '../../cart/controllers/cart_controller.dart';
import '../../../../models/product.dart';

class ProductDetailsController extends GetxController {
  final String productId;
  final CartController cartController = Get.find<CartController>();

  final Map<String, Map<String, dynamic>> products = {
    '1': {
      'name': 'T-Shirt',
      'price': 20.0,
      'maxPrice': 25.0,
      'description': 'A comfortable cotton T-Shirt.',
      'productImage': [
        'https://i.ibb.co/wYLzbXS/t-shirt-squared.png',
        'https://via.placeholder.com/150x150?text=Image+1',
        'https://via.placeholder.com/150x150?text=Image+2',
      ],
      'sizes': ['S', 'M', 'L']
    },
    '2': {
      'name': 'Jeans',
      'price': 40.0,
      'maxPrice': 50.0,
      'description': 'Stylish denim jeans.',
      'productImage': [
        'https://i.ibb.co/mtZ4mNs/Jeans-squared.png',
        'https://via.placeholder.com/150x150?text=Image+1',
        'https://via.placeholder.com/150x150?text=Image+2',
      ],
      'sizes': ['28', '30', '32']
    },
    '3': {
      'name': 'Jeans',
      'price': 60.0,
      'maxPrice': 80.0,
      'description': 'Stylish denim jeans for Women.',
      'productImage': [
        'https://i.ibb.co/B6nGK10/Jeans-F-squared.png',
        'https://via.placeholder.com/150x150?text=Image+1',
        'https://via.placeholder.com/150x150?text=Image+2',
      ],
      'sizes': ['28', '30', '32']
    },
    '4': {
      'name': 'Sneakers',
      'price': 80.0,
      'maxPrice': 100.0,
      'description': 'Comfortable and durable sneakers.',
      'productImage': [
        'https://i.ibb.co/nBpVMRQ/Sneakers-squared.png',
        'https://via.placeholder.com/150x150?text=Image+1',
        'https://via.placeholder.com/150x150?text=Image+2',
      ],
      'sizes': ['US 7', 'US 8', 'US 9']
    },
    '5': {
      'name': 'Dress',
      'price': 50.0,
      'maxPrice': 60.0,
      'description': 'Elegant dress for any occasion.',
      'productImage': [
        'https://i.ibb.co/LCKt7vB/Dress-squared.png',
        'https://via.placeholder.com/150x150?text=Image+1',
        'https://via.placeholder.com/150x150?text=Image+2',
      ],
      'sizes': ['S', 'M', 'L']
    },
    '6': {
      'name': 'Sunglasses',
      'price': 25.0,
      'maxPrice': 30.0,
      'description': 'Stylish sunglasses for sunny days.',
      'productImage': [
        'https://i.ibb.co/r2rBwnZ/Sunglasses-squared.png',
        'https://via.placeholder.com/150x150?text=Image+1',
        'https://via.placeholder.com/150x150?text=Image+2',
      ],
      'sizes': ['OneSize']
    },
  };

  var productDetails = {}.obs;
  var isLoading = true.obs;
  var selectedSize = ''.obs;

  List<String> get availableSizes => productDetails['sizes']?.cast<String>() ?? [];

  ProductDetailsController(this.productId);

  @override
  void onInit() {
    super.onInit();
    fetchProductDetails();
  }

  void fetchProductDetails() {
    Future.delayed(Duration(seconds: 1), () {
      final product = products[productId];
      if (product != null) {
        productDetails.value = product;
        selectedSize.value = product['sizes']?.first ?? '';
      } else {
        Get.snackbar('Error', 'Product not found');
      }
      isLoading.value = false;
    });
  }

  void addToCart() {
    // ignore: invalid_use_of_protected_member
    final product = productDetails.value;
    final cartItem = CartItem(
      product: Product.fromJson({
        'id': productId,
        'name': product['name'],
        'price': product['price'],
        'productImage': product['productImage'][0],
        'brandName': 'N/A',
        'category': 'N/A',
        'description': product['description'],
        'size': selectedSize.value,
      }),
      quantity: 1,
    );
    cartController.cartItems.add(cartItem);
    Get.snackbar('Success', 'Product added to cart');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
