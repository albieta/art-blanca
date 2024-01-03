import 'package:artblanca/screens/artDetailPage.dart';
import 'package:flutter/material.dart';

class ArtPage extends StatelessWidget {
  const ArtPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16.0),
              const Text(
                'browse our collection',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
            ]),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400.0,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArtDetailPage(artData: fakeDataList[index]),
                      ),
                    );
                  },
                  child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: SizedBox(
                    width: 100,
                    height: 400,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ClipRRect(
                              child: Image.network(
                                fakeDataList[index].imageUrl,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            fakeDataList[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),);
              },
              childCount: fakeDataList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ArtData {
  final String imageUrl;
  final String title;
  final String description;
  final double price;

  ArtData({required this.imageUrl, required this.title, required this.description, required this.price});
}

final List<ArtData> fakeDataList = [
  ArtData(
    imageUrl: 'assets/images/1.png',
    title: 'Petal Prism',
    description: 'A mesmerizing artwork capturing the delicate beauty of petals in vibrant colors.',
    price: 49.99,
  ),
  ArtData(
    imageUrl: 'assets/images/2.png',
    title: 'Blossom Ballet',
    description: 'Elegant dance of blossoms on canvas, showcasing the harmony of nature.',
    price: 59.99,
  ),
  ArtData(
    imageUrl: 'assets/images/3.png',
    title: 'Floral Fantasia',
    description: 'Immerse yourself in a fantasy world of enchanting flowers and surreal landscapes.',
    price: 79.99,
  ),
  ArtData(
    imageUrl: 'assets/images/4.png',
    title: 'Lily Serenade',
    description: 'The gentle serenade of lilies, expressing tranquility and elegance.',
    price: 39.99,
  ),
  ArtData(
    imageUrl: 'assets/images/5.png',
    title: 'Sunflower Sonata',
    description: 'A vibrant symphony of sunflowers, radiating warmth and positivity.',
    price: 69.99,
  ),
  ArtData(
    imageUrl: 'assets/images/6.png',
    title: 'Rose Reverie',
    description: 'Enter a dreamlike state with this captivating artwork featuring roses in bloom.',
    price: 54.99,
  ),
  ArtData(
    imageUrl: 'assets/images/7.png',
    title: 'Orchid Odyssey',
    description: 'Embark on an odyssey through the exotic beauty of orchids in this stunning piece.',
    price: 89.99,
  ),
  ArtData(
    imageUrl: 'assets/images/8.png',
    title: 'Daisy Dreamscape',
    description: 'Escape to a dreamscape filled with daisies, symbolizing innocence and purity.',
    price: 49.99,
  ),
  ArtData(
    imageUrl: 'assets/images/9.png',
    title: 'Tulip Tapestry',
    description: 'A tapestry of tulips, weaving together a story of grace and elegance.',
    price: 64.99,
  ),
  ArtData(
    imageUrl: 'assets/images/10.png',
    title: 'Poppy Palette',
    description: 'Explore a vibrant palette of poppies, each hue telling a different story.',
    price: 74.99,
  ),
  ArtData(
    imageUrl: 'assets/images/11.png',
    title: 'Marigold Melody',
    description: 'Experience a melody of marigolds, resonating with joy and vibrancy.',
    price: 59.99,
  ),
  ArtData(
    imageUrl: 'assets/images/12.png',
    title: 'Iris Impression',
    description: 'An impressionistic portrayal of irises, capturing the essence of mystery.',
    price: 69.99,
  ),
  ArtData(
    imageUrl: 'assets/images/13.png',
    title: 'Snapdragon Symphony',
    description: 'A symphony of snapdragons, dancing in harmony and expressing resilience.',
    price: 79.99,
  ),
  ArtData(
    imageUrl: 'assets/images/14.png',
    title: 'Peony Pinnacle',
    description: 'Reach the pinnacle of beauty with this exquisite portrayal of peonies.',
    price: 84.99,
  ),
  ArtData(
    imageUrl: 'assets/images/15.png',
    title: 'Daffodil Daze',
    description: 'Get lost in the daze of daffodils, symbolizing new beginnings and rebirth.',
    price: 44.99,
  ),
];