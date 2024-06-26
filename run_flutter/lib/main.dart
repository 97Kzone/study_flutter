import 'package:flutter/material.dart';
import 'package:run_flutter/widgets/button.dart';
import 'package:run_flutter/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, 97Kzone',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), 
                      fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$5,000,000',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'Transfer', bgColor: Colors.amber, textColor: Colors.black,),
                    Button(text: 'Request', bgColor: Color(0xFF1F2123), textColor: Colors.white,),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text(
                      'Wallets', 
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text('View All', style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18),),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro', 
                  code: 'Eur', 
                  amount: '6.428', 
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9.785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                    name: 'Dollor',
                    code: 'USD',
                    amount: '5.428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ),
              ],
            )
          ),
      ),
    ));
  }
}
