import 'package:pkg_network/pkg_network.dart';
import 'package:test/test.dart';
import 'package:pkg_utils/pkg_utils.dart';

NetDatasource netSource = NetDatasource(
    baseUrl: "https://macmini:1884/api/v1/", disableCertCheck: true);

void main() {
  test('Network connect', () async {
    String? sTmp;

    sTmp = await netSource.requestNetwork(
      method: HttpMethod.get,
      url: "test",
      /* jsonHeaders: {
          'Authorization': 'Basic Z3VlcY=='          
        } */
    );
    print("Result: $sTmp");
    Console.printColor(PrintColor.white, netSource.status.errorMessage);
  });
}
