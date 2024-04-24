import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://your-django-backend-url/api/';

  static Future<void> uploadPDF(String filePath) async {
    // Implement logic to upload PDF file to Django backend
  }

  static Future<List<dynamic>> fetchAudiobooks() async {
    final response = await http.get('$baseUrl/audiobooks/');
    if (response.statusCode == 200) {
      return response.body; // Adjust parsing as per your API response
    } else {
      throw Exception('Failed to fetch audiobooks');
    }
  }
}
