import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class NamaSiswaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'namaSiswa',
      apiUrl: 'https://finalbackendweb.herokuapp.com/api/users',
      callType: ApiCallType.GET,
      headers: {
        'name': '',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic pointSiswa(dynamic response) => getJsonField(
        response,
        r'''$.data[:].pointSiswa''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
      );
}
