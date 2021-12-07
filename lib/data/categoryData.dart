import 'package:verosa/model/categoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel;

  ///1
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'General';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1451187580459-'
      '43490279c0fa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib='
      'rb-1.2.1&auto=format&fit=crop&w=872&q=80';
  category.add(categoryModel);

  ///2
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1509130298739-'
      '651801c76e96?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGJ1c2luZXNzfGVufDB8fDB'
      '8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  ///3
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Entertainment';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1614294148960-'
      '9aa740632a87?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8'
      'fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  ///4
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1535914254981-'
      'b5012eebbd15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVu'
      'fDB8fHx8&auto=format&fit=crop&w=870&q=80';
  category.add(categoryModel);

  ///5
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1496065187959-'
      '7f07b8353c55?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNjaWVuY2V8ZW58MHx8MHx'
      '8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  ///6
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Sports';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1471295253337-'
      '3ceaaedca402?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3BvcnRzfGVufDB8fDB8fA%'
      '3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  ///7
  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Technology';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1531297484001-'
      '80022131f5a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVjaG5v'
      'bG9neXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60';
  category.add(categoryModel);

  return category;
}
