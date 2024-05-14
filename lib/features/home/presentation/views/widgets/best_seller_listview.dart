import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_seller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: BestSellersListViewItem(),
      ),
      itemCount: 10,
    );
  }
}
