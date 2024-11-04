import 'package:tafweed/enums.dart';

class Data<T>{
  T content;
  DataStatus status;

  Data(this.content, this.status);
}