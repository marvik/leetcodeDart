import 'package:leetcode/src/problem/middle_of_the_linked_list.876.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() => group('middle_of_the_linked_list.876', () {
      final f = MiddleOfTheLinkedList();

      test('f([1, 2, 3, 4, 5])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5]))?.toList(), equals([3, 4, 5]));
      });

      test('f([1, 2, 3, 4, 5, 6])', () {
        expect(f(ListNode<int>.of([1, 2, 3, 4, 5, 6]))?.toList(), equals([4, 5, 6]));
      });
    });
