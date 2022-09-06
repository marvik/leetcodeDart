import 'dart:convert';

class TreeNode {
  TreeNode([this.val = 0, this.left, this.right]);

  static TreeNode? of(Iterable<int?> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext() || iterator.current == null) return null;
    final head = TreeNode(iterator.current!);
    var queue = <TreeNode>[head];
    while (true) {
      final newQueue = <TreeNode>[];
      for (final node in queue) {
        if (!iterator.moveNext()) return head;
        if (iterator.current != null) newQueue.add(node.left = TreeNode(iterator.current!));
        if (!iterator.moveNext()) return head;
        if (iterator.current != null) newQueue.add(node.right = TreeNode(iterator.current!));
      }
      if (newQueue.isEmpty) return head;
      queue = newQueue;
    }
  }

  int val;
  TreeNode? left;
  TreeNode? right;

  List<int?> toList() {
    final list = <int?>[val];
    var queue = <TreeNode>[this];
    while (true) {
      final newQueue = <TreeNode>[];
      for (final node in queue) {
        final left = node.left, right = node.right;
        list
          ..add(left?.val)
          ..add(right?.val);
        if (left != null) newQueue.add(left);
        if (right != null) newQueue.add(right);
      }
      if (newQueue.isEmpty) {
        for (var i = list.length - 1; i >= 0; i--) {
          if (list[i] != null) break;
          list.removeAt(i);
        }
        return list;
      }
      queue = newQueue;
    }
  }

  Map<String, Object?> toJson() => <String, Object?>{
        'val': val,
        'left': left?.toJson(),
        'right': right?.toJson(),
      };

  @override
  String toString() => const JsonEncoder.withIndent(' ').convert(this);
}
