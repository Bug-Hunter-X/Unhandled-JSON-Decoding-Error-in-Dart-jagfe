```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key will throw an exception
      final data = jsonResponse['nonExistentKey'];
      print(data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // The error handling here might be too general. It doesn't distinguish
    // between different types of exceptions (e.g., network errors vs JSON decoding errors).
  }
}
```