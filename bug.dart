```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Process the data
      for (final item in data) {
        print(item['name']); // Accessing 'name' property
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, perhaps by showing an error message to the user.
  }
}
```