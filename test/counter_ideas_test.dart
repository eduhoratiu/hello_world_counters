// Verify that there are no empty idea lists in the `counterIdeas` map.
// This guards against accidentally adding a CounterType without ideas.

import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world_counters/data/counter_ideas.dart';

void main() {
  test('counterIdeas contains no empty idea lists', () {
    final empties = counterIdeas.entries.where((e) => e.value.isEmpty).map((e) => e.key).toList();

    expect(empties, isEmpty, reason: 'Counter types with empty idea lists: $empties');
  });
}
