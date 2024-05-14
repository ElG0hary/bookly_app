import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            'Best Sellers',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          BestSellersListViewItem(),
        ],
      ),
    );
  }
}

class BestSellersListViewItem extends StatelessWidget {
  const BestSellersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Styles.textStyle20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
