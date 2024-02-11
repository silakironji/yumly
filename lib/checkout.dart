import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectedPaymentOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            // Add navigation back functionality here
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            color: Colors.green,
            child: SizedBox(
              height: 100, // Adjust the height as needed
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Amount to pay Ksh. 400',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildSection(
            title: 'Order Summary',
            action: 'View',
          ),
          _buildSection(
            title: 'Personal Information',
            action: 'Edit',
          ),
          const SizedBox(height: 16),
          const Text(
            'Payment',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildPaymentOptions(),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Add action for placing order
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 16.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Place Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required String action}) {
    return InkWell(
      onTap: () {
        // Add action for tapping the section
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                const SizedBox(width: 10.0),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            Text(
              action,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildPaymentOption(
          title: 'My Wallet',
          image: 'assets/images/gpay.png',
        ),
        _buildPaymentOption(
          title: 'Card',
          image: 'assets/images/mastercard.png',
        ),
        _buildPaymentOption(
          title: 'Google Play',
          image: 'assets/images/gpay.png',
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.more_horiz), // Add "..." icon
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'View all methods',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Add action for tapping the icon
                },
                child: Icon(Icons.arrow_forward), // Add greater than icon
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentOption({required String title, required String image}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(), // Add Spacer to push radio button to the right
          Radio<String>(
            value: title,
            groupValue: selectedPaymentOption,
            onChanged: (value) {
              setState(() {
                selectedPaymentOption = value!;
              });
            },
            activeColor: Colors.green, // Change the active color to green
          ),
        ],
      ),
    );
  }
}
