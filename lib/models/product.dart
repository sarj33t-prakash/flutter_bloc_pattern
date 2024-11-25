///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
class Product {
  int? id;
  String? title;
  String? description;
  String? category;
  String? image;

  Product(
      {this.id,
        this.title,
        this.description,
        this.category,
        this.image,
      });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;
    return data;
  }
}



