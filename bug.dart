```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = json.decode(response.body);
      // This line can throw an exception if jsonData is not a list or map
      final data = jsonData['results'];  
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error: $e');
    // Re-throw the exception for higher level handling if needed
    rethrow;
  }
}
```