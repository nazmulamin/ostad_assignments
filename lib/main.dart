import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Photo Gallery'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displaySnackbar(context, msg: 'Photos Uploaded Successfully!');
        },
        child: const Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        title: const Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Welcome to My Photo Gallery!',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                PhotoItem(
                    img:
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                    onTap: () {
                      displaySnackbar(context, msg: 'Clicked on photo!');
                    }),
                PhotoItem(
                    img:
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                    onTap: () {
                      displaySnackbar(context, msg: 'Clicked on photo!');
                    }),
                PhotoItem(
                    img:
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                    onTap: () {
                      displaySnackbar(context, msg: 'Clicked on photo!');
                    }),
                PhotoItem(
                    img:
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                    onTap: () {
                      displaySnackbar(context, msg: 'Clicked on photo!');
                    }),
                PhotoItem(
                    img:
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                    onTap: () {
                      displaySnackbar(context, msg: 'Clicked on photo!');
                    }),
                PhotoItem(
                    img:
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                    onTap: () {
                      displaySnackbar(context, msg: 'Clicked on photo!');
                    }),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: Image.network(
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                      )),
                  title: const Text('Sample Photo 1'),
                  subtitle: const Text('Category 1'),
                ),
                ListTile(
                  leading: SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: Image.network(
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                      )),
                  title: const Text('Sample Photo 2'),
                  subtitle: const Text('Category 2'),
                ),
                ListTile(
                  leading: SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: Image.network(
                        'https://www.sweetpeas.ca/cdn/shop/t/37/assets/page_home_img.png',
                      )),
                  title: const Text('Sample Photo 3'),
                  subtitle: const Text('Category 3'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void displaySnackbar(context, {required msg}) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));

class PhotoItem extends StatelessWidget {
  const PhotoItem({
    super.key,
    required this.img,
    this.onTap,
  });

  final String img;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover,
          ),
        ),
        height: 120,
        width: 120,
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
          ),
          onPressed: onTap,
          child: const Text(
            'Caption',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
