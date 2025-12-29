class AppValidators {
  const AppValidators._(); // prevents instantiation

  static String? required(
      String? value, {
        String message = 'This field is required',
      }) {
    if (value == null || value.trim().isEmpty) {
      return message;
    }
    return null;
  }

  static String? minLength(
      String? value, {
        int length = 3,
        String? message,
      }) {
    if (value == null || value.trim().length < length) {
      return message ?? 'Minimum $length characters required';
    }
    return null;
  }

  static String? email(
      String? value, {
        String message = 'Enter a valid email address',
      }) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final emailRegex =
    RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return message;
    }

    return null;
  }

  static String? maxLength(
      String? value, {
        int length = 250,
        String? message,
      }) {
    if (value != null && value.length > length) {
      return message ?? 'Maximum $length characters allowed';
    }
    return null;
  }
}
