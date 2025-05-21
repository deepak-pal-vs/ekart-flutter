import 'package:first_flutter/widgets/AppDrawer.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'We are here to help you with anything and everything on E-Kart',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),

                      Divider(height: 1, color: Colors.grey[300]),
                      SizedBox(height: 16),
                      Text(
                        'Get instant solutions for your queries about orders, returns, payments, '
                        'or any other questions related to your E-Kart experience. Our team is '
                        'available 24/7 to assist you.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Average response time: under 2 hours',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 1, 81, 122),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Frequently Asked Questions',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    ExpansionTile(
                      childrenPadding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      minTileHeight: 12,
                      title: Text('How do I track my order?'),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            'You can track your order through the "My Orders" section in the app. '
                            'We\'ll also send you email/SMS updates at each stage of delivery.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Divider(),

                    ExpansionTile(
                      minTileHeight: 12,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      title: Text(
                        'What is your return policy for electronics?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            'We offer a 15-day return policy for most electronics. '
                            'The product must be in original condition with all accessories and packaging. '
                            'Some items like software and personal care electronics are non-returnable.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Divider(),

                    ExpansionTile(
                      minTileHeight: 12,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      title: Text(
                        'How do I know if a product is compatible with my device?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            'Check the product specifications in the description. '
                            'You can also use our compatibility checker tool or contact our support team for assistance.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Divider(),

                    ExpansionTile(
                      minTileHeight: 12,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      title: Text(
                        'Do you offer installation services for electronics?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            'Yes, we offer professional installation services for select electronics like TVs, '
                            'home theaters, and smart home devices. The option will appear at checkout if available.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Divider(),

                    ExpansionTile(
                      minTileHeight: 12,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                      title: Text(
                        'What warranty do you provide on electronics?',
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            'Most electronics come with a 1-year manufacturer warranty. '
                            'Extended warranty options are available for purchase on select items.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                    Text(
                      'Still stuck? Help us main away',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                          double.infinity,
                          50,
                        ), // Full width, 50 height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            24,
                          ), // 12px border radius
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ), // Inner padding
                        backgroundColor: Color.fromARGB(255, 1, 81, 122),
                      ),
                      child: Text(
                        "Send a message",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
