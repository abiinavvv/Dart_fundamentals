//     FIND NUMBERS WITH EVEN NUMBER OF DIGITS
void main() {
  List<int> example = [12, 345, 2, 6, 7896];
  int count = 0;
  List<int> splt = example.map((e) => e.toString().length).toList();
  for (var nums in splt) {
    if (nums % 2 == 0) {
      count++;
    }
  }
  print(count);

// HOW MANY NUMBERS ARE SMALLER THAN THE CURRENT NUMBER

  List<int> nums = [8, 1, 2, 2, 3];
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    int count = 0;
    for (int j = 0; j < nums.length; j++) {
      if (nums[i] > nums[j]) {
        count++;
      }
    }
    result.add(count);
  }
  print(result);

  // MAXIMUM PRODUCT OF TWO ELEMENTS IN AN ARRAY

  List<int> nums1 = [3, 4, 5, 2];
  int largest = 0;
  for (int i = 0; i < nums1.length; i++) {
    for (int j = 0; j < nums1.length; j++) {
      if ((nums1[i] - 1) * (nums1[j] - 1) > largest && i != j) {
        largest = (nums1[i] - 1) * (nums1[j] - 1);
      }
    }
  }
  print(largest);

  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int slow = 0; // Slow pointer tracks unique elements

    for (int fast = 1; fast < nums.length; fast++) {
      if (nums[fast] != nums[slow]) {
        slow++; // Move slow pointer to next unique position
        nums[slow] = nums[fast]; // Overwrite with unique value
      }
    }

    return slow + 1; // Unique count
  }

  List<int> nums2 = [1, 1, 2, 3, 3, 4, 5, 5];
  int len = removeDuplicates(nums2);
  print(nums2.sublist(0, len)); // Output: [1, 2, 3, 4, 5]

  //  MAXIMUM ACSENDING SUBARRAY SUM

  List<int> nums4 = [10, 20, 30, 5, 10, 50];
  int sum = 0;
  int max = 0;
  for (int i = 0; i < nums4.length; i++) {
    if (i == 0 || nums4[i] > nums4[i - 1]) {
      sum += nums4[i];
    } else {
      sum = nums4[i];
    }
    max = sum > max ? sum : max;
  }

  // TUPLE WITH SAME PRODUCT

  List<int> nums5 = [2, 3, 4, 6];
  int numberOftuples = 0;
  Map<int, int> map = {};
  for (int i = 0; i < nums5.length; i++) {
    for (int j = i + 1; j < nums5.length; j++) {
      int product = nums5[i] * nums5[j];
      if (map.containsKey(product)) {
        numberOftuples += map[product]! * 8;
        map[product] = map[product]! + 1;
      } else {
        map[product] = 1;
      }
    }
  }
  print(numberOftuples);

  // THIRD MAXIMUM NUMBER

  List<int> nums6 = [3, 2, 1];
  int first = -1000000000;
  int second = -1000000000;
  int third = -1000000000;
  for (int i = 0; i < nums6.length; i++) {
    if (nums6[i] > first) {
      third = second;
      second = first;
      first = nums6[i];
    } else if (nums6[i] > second && nums6[i] < first) {
      third = second;
      second = nums6[i];
    } else if (nums6[i] > third && nums6[i] < second) {
      third = nums6[i];
    }
  }
  print(third);

  
}
