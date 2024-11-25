///
/// @AUTHOR : Sarjeet Sandhu
/// @DATE : 25/11/24
/// @Message :
///
abstract class ProductEvent {}

class FetchProducts extends ProductEvent {
  final String path;

  FetchProducts({required this.path});
}
