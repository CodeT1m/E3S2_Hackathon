class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'History',
    noOfCourses: 55,
    thumbnail: 'assets/icons/history.png',
  ),
  Category(
    name: 'Accounting',
    noOfCourses: 20,
    thumbnail: 'assets/icons/accounting.jpg',
  ),
  Category(
    name: 'Art',
    noOfCourses: 16,
    thumbnail: 'assets/icons/art.png',
  ),
  Category(
    name: 'Photography',
    noOfCourses: 25,
    thumbnail: 'assets/icons/photo.jpg',
  ),
];