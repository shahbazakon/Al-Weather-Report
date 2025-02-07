import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:weather_service/data/models/ai_suggestion.dart';
import 'package:weather_service/data/models/weather.dart';
import 'package:weather_service/secrets.dart';

Future<String?> generateAISuggestion(double temperature, String city) async {
  try {
    // Initialize the Gemini model
    final model = GenerativeModel(
      model: 'gemini-pro', // Use 'gemini-pro' for text-only prompts
      apiKey: googleGeminiApiKey, // Replace with your Gemini API key
    );

    // Define the boilerplate prompt
    final prompt = '''
You are a weather assistant. Based on the current temperature of $temperature°C in $city, provide a helpful suggestion for the user. 
The suggestion should be concise, practical, and related to the weather conditions. 
For example, if it's hot, suggest staying hydrated; if it's cold, suggest wearing warm clothes.
''';

    // Send the prompt to the Gemini API
    final response = await model.generateContent([Content.text(prompt)]);

    // Log the response for debugging
    debugPrint('Gemini Response: ${response.text}');

    // Return the generated suggestion
    return response.text;
  } catch (e) {
    debugPrint('Error generating AI suggestion: $e');
    return null;
  }
}

Future<List<AISuggestion>> generateAISuggestions(Weather weather) async {
  final List<AISuggestion> suggestions = [];

  final currentTemp = weather.list.first.main.temp;
  final city = weather.city.name;

  // Generate AI suggestion using Gemini API
  final aiSuggestion = await generateAISuggestion(currentTemp, city);

  if (aiSuggestion != null) {
    suggestions.add(
      AISuggestion(
        title: 'AI Suggestion',
        subtitle: 'Based on current weather in $city',
        detailedDescription: aiSuggestion,
      ),
    );
  }

  return suggestions;
}

void showAISuggestionDetail(BuildContext context, AISuggestion suggestion) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suggestion.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                suggestion.subtitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                suggestion.detailedDescription,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
