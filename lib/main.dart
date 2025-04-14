import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> posts = [];
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          posts = json.decode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Failed to load data. Error: ${response.statusCode}';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error fetching data: $e';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Flutter API Task')),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : errorMessage != null
              ? Center(
                child: Text(errorMessage!, style: TextStyle(color: Colors.red)),
              )
              : ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text(
                        posts[index]['title'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                   subtitle: Text(posts[index]['body']),
                ),
            );
        },
      ),
    );
  }
}
