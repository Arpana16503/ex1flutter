import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NGO Info App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'NGO Information Page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, //  Center horizontally
              children: [
                Text(
                  "Welcome to Helping Hands NGO!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),

                //  Wrap each Icon with Center
                Center(child: Icon(Icons.volunteer_activism, color: Colors.redAccent)),
                SizedBox(height: 10),
                Center(child: Icon(Icons.event, color: Colors.blueAccent)),
                SizedBox(height: 10),
                Center(child: Icon(Icons.info_outline, color: Colors.orange)),

                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Donate Now'),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email to volunteer or get updates",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                //  Center the image
                Center(
                  child: Image.network(
                    'https://i0.wp.com/ketto.blog/wp-content/uploads/2022/08/shutterstock_1797442786-min.jpg',
                    width: 250,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.teal.shade100,
                  child: Text(
                    'Together, we can make a difference!\n'
                    'A non-governmental organization (NGO) is an entity that is not part of the government. This can include non-profit and for-profit entities. '
                    'An NGO may get a significant percentage or even all of its funding from government sources. '
                    'An NGO typically is thought to be a nonprofit organization that operates partially independent of government control.\n'
                    'Nonprofit NGOs often focus on humanitarian or social issues but can also include clubs and associations offering services to members. '
                    'Some nonprofit NGOs, like the World Economic Forum, may also act as lobby groups for corporations. '
                    'Unlike international organizations (IOs), which directly interact with sovereign states and governments, NGOs are independent from them.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
