import 'package:ecommerce/models/product_model.dart';

class UserModel {
  String username;
  String email;
  List<ProductModel> products = []; //Lista de produtos que o usuário possui
  List<ProductModel> favorites = []; //Lista de produtos favoritos do usuário

  UserModel({required this.username, required this.email});

  void addProduct(ProductModel product) {
    products.add(product);
  }

  void addFavorite(ProductModel product) {
    //verifica se o prosuto já está na lista de favoritos do usuário
    if (!favorites.contains(product)) {
      favorites.add(product);
    }
  }
}