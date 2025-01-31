```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (final item in data) {
        // Check if the 'name' property exists before accessing it
        final name = item['name'];
        if (name != null) {
          print('Name: $name');
        } else {
          print('Missing name property in item: $item');
        }
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Consider showing a user-friendly error message
  }
}
```