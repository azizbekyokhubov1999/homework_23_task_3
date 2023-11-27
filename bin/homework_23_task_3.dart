import 'package:homework_23_task_3/homework_23_task_3.dart' as homework_23_task_3;

import 'models/product.dart';
import 'services/network_service.dart';

void main() async{
String data = await NetworkService.getData(NetworkService.apiProduct);
List<Product> list = productListFromData(data);
list.forEach((element) {
  print(element.details.specs.screen.type);
});
}
