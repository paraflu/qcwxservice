import 'package:qcwxservice/qcwxservice.dart';

void main() async {
  var api = QcApi();
  print('awesome: ${await api.getWatchfaceList()}');
}
