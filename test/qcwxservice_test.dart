import 'package:qcwxservice/qcwxservice.dart';
import 'package:test/test.dart';

void main() async {
  group('Service Qc Test', () {
    final service = QcApi();

    setUp(() {
      // Additional setup goes here.
    });

    test('gettoken', () async {
      expect(await service.getToken(), isNotNull);
    });

    test('watchfacelist', () async {
      final list = await service.getWatchfaceList();

      expect(list, isNotNull);
      expect(list, isNotEmpty);
    });
  });
}
