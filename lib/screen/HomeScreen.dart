import 'package:appgreenfood/widget/HomeBottomBar.dart';
import 'package:appgreenfood/widget/ItemsWidget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _navigateToCart() {
    // Xử lý điều hướng tới màn hình giỏ hàng
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartScreen(cartItems: [],)), // CartScreen cần tạo riêng
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Thanh trên cùng
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: const Color.fromARGB(255, 16, 0, 0).withOpacity(0.5),
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: _navigateToCart,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: const Color.fromARGB(255, 14, 0, 0).withOpacity(0.5),
                              size: 35,
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: const Text(
                                  '3', // Số lượng sản phẩm trong giỏ hàng
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // Tiêu đề
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "A Great Day to eat Vegetables",
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 0, 0),
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // Thanh tìm kiếm
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 246, 247, 248),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find your vegetables",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 18, 0, 0).withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: const Color.fromARGB(255, 19, 0, 0).withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                // TabBar
                TabBar(
                  controller: _tabController,
                  labelColor: const Color.fromARGB(255, 52, 229, 155),
                  unselectedLabelColor: const Color.fromARGB(255, 9, 0, 0).withOpacity(0.5),
                  isScrollable: true,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 52, 229, 155),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 4),
                  ),
                  labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                  tabs: const [
                    Tab(text: "Rau"),
                    Tab(text: "Củ"),
                    Tab(text: "Quả"),
                    Tab(text: "Trái cây"),
                  ],
                ),
                const SizedBox(height: 10),
                // Nội dung tab
                Center(
                  child: [
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                  ][_tabController.index],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
class CartScreen extends StatelessWidget {
  final List<String> cartItems; // Danh sách sản phẩm trong giỏ hàng

  const CartScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text("Giỏ hàng của bạn đang trống!"))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]),
                );
              },
            ),
    );
  }
}

