class ListNode<T> extends Iterable<T> {
  ListNode(this.val, [this.next]);

  factory ListNode.of(Iterable<T> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext()) throw Exception('Empty collection');
    final head = ListNode<T>(iterator.current);
    var node = head;
    while (iterator.moveNext()) {
      node = node.next = ListNode<T>(iterator.current);
    }
    return head;
  }

  final T val;

  ListNode<T>? next;

  @override
  Iterator<T> get iterator => _ListNodeIterator<T>(this);

  Iterable<T> toIterable() sync* {
    ListNode<T>? node = this;
    yield val;
    while (true) {
      node = node?.next;
      if (node == null) break;
      yield node.val;
    }
  }

  @override
  String toString() {
    ListNode<T>? node = this;
    final buffer = StringBuffer('(')..write(node.val);
    while (true) {
      node = node?.next;
      if (node == null) break;
      buffer
        ..write(', ')
        ..write(node.val);
    }
    return (buffer..write(')')).toString();
  }
}

class _ListNodeIterator<T> implements Iterator<T> {
  _ListNodeIterator(ListNode<T> node) : _node = node;

  bool _head = true;
  ListNode<T> _node;

  @override
  T get current => _node.val;

  @override
  @pragma('vm:prefer-inline')
  bool moveNext() {
    final next = _head ? _node : _node.next;
    _head = false;
    if (next == null) {
      return false;
    }
    _node = next;
    return true;
  }
}
