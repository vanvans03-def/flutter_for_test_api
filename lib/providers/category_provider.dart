import 'package:flutter_application_test/api/api_service.dart';
import 'package:flutter_application_test/model/pagination.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/category.dart';

final categoriesProvider =
    FutureProvider.family<List<Category>?, PaginationModel>(
  (ref, paginationModel) {
    final apiRepository = ref.watch(apiService);

    return apiRepository.getCategories(
      paginationModel.page,
      paginationModel.pageSize,
    );
  },
);
