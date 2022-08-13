import 'package:test/test.dart';

import 'problem/add_two_integers.2235.test.dart' as add_two_integers_2235_test;
import 'problem/duplicate_zeros.1089.test.dart' as duplicate_zeros_1089_test;
import 'problem/fizz_buzz.412.test.dart' as fizz_buzz_412_test;
import 'problem/longest_increasing_subsequence.300.test.dart' as longest_increasing_subsequence_300_test;
import 'problem/merge_sorted_array.88.test.dart' as merge_sorted_array_88_test;
import 'problem/middle_of_the_linked_list.876.test.dart' as middle_of_the_linked_list_876_test;
import 'problem/number_of_steps_to_reduce_a_number_to_zero.1342.test.dart'
    as number_of_steps_to_reduce_a_number_to_zero_1342_test;
import 'problem/ransom_note.383.test.dart' as ransom_note_383_test;
import 'problem/remove_duplicates_from_sorted_array.26.test.dart' as remove_duplicates_from_sorted_array_26_test;
import 'problem/remove_element.27.test.dart' as remove_element_27_test;
import 'problem/richest_customer_wealth.1672.test.dart' as richest_customer_wealth_1672_test;
import 'problem/running_sum_of_1d_array.1480.test.dart' as running_sum_of_1d_array_1480_test;
import 'problem/squares_of_a_sorted_array.977.test.dart' as squares_of_a_sorted_array_977_test;
import 'structure/list_node.test.dart' as list_node_test;

void main() {
  group('structure', list_node_test.main);
  group('problems', () {
    add_two_integers_2235_test.main();
    richest_customer_wealth_1672_test.main();
    running_sum_of_1d_array_1480_test.main();
    number_of_steps_to_reduce_a_number_to_zero_1342_test.main();
    middle_of_the_linked_list_876_test.main();
    ransom_note_383_test.main();
    fizz_buzz_412_test.main();
    longest_increasing_subsequence_300_test.main();
    merge_sorted_array_88_test.main();
    duplicate_zeros_1089_test.main();
    squares_of_a_sorted_array_977_test.main();
    remove_element_27_test.main();
    remove_duplicates_from_sorted_array_26_test.main();
  });
}
