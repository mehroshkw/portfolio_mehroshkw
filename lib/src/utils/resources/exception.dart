class AuthInvalidLoginCredential implements Exception {
  final String error;

  const AuthInvalidLoginCredential({required this.error});
}

class NoInternetConnectException implements Exception {
  static const String _ERROR = 'User device is not connected to internet';

  const NoInternetConnectException();

  @override
  String toString() => _ERROR;
}