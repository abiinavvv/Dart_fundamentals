class Solution {
  int sumEven(List<int> arr) {
    int sum = 0;
    for (var nums in arr) {
      if (nums % 2 == 0) {
        sum += nums;
      }
    }
    return sum;
  }

  int sumOdd(List<int> arr) {
    int sum = 0;
    for (var nums in arr) {
      if (nums % 2 != 0) {
        sum += nums;
      }
    }
    return sum;
  }

  void results() {
    print(sumEven([7, 8]));
    print(sumOdd([7, 8]));
  }
}

void main() {
  Solution solution = Solution()..results();

  solution;
}
