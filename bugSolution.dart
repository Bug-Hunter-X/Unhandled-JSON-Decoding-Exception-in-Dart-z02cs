```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      // Check if jsonData is a map and contains the 'results' key
      if (jsonData is Map && jsonData.containsKey('results')) {
        final data = jsonData['results'];
        if (data is List) {
          return data;
        } else {
          print('Error: "results" is not a list');
          return null; // Or throw an exception
        }
      } else {
        print('Error: Invalid JSON structure or missing "results" key');
        return null; // Or throw an exception
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; // Re-throw to allow for higher-level handling
  }
}
```