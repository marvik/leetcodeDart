/*
 * 1299. Replace Elements with Greatest Element on Right Side
 * 
 * Given an array arr, replace every element in that array with the greatest 
 * element among the elements to its right, and replace the last element with -1.
 * 
 * After doing so, return the array.
 * 
 * 
 * Example 1:
 * 
 * Input: arr = [17,18,5,4,6,1]
 * Output: [18,6,6,6,1,-1]
 * Explanation: 
 * - index 0 --> the greatest element to the right of index 0 is index 1 (18).
 * - index 1 --> the greatest element to the right of index 1 is index 4 (6).
 * - index 2 --> the greatest element to the right of index 2 is index 4 (6).
 * - index 3 --> the greatest element to the right of index 3 is index 4 (6).
 * - index 4 --> the greatest element to the right of index 4 is index 5 (1).
 * - index 5 --> there are no elements to the right of index 5, so we put -1.
 * 
 * 
 * Example 2:
 * 
 * Input: arr = [400]
 * Output: [-1]
 * Explanation: There are no elements to the right of index 0.
 *  
 * 
 * Constraints:
 * 
 * 1 <= arr.length <= 10^4
 * 1 <= arr[i] <= 10^5
 */

class Solution {
  List<int> replaceElements(List<int> arr) {
    if (arr.isEmpty) return arr;
    var max = 0, last = arr.length - 1;
    for (var i = 0; i < last; i++) {
      if (max == i) {
        max = i + 1;
        for (var j = i + 2; j <= last; j++) if (arr[j] >= arr[max]) max = j;
      }
      arr[i] = arr[max];
    }
    return arr..[last] = -1;
  }
}
