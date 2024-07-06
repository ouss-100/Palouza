import 'package:get/get.dart';

class MyTraslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello World',
        },
        'ar': {
          'hello': 'مرحبا بالعالم',
        },
      };
}