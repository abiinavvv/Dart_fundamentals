class Solution {
  int findLengthOfLCIS(List<int> nums) {
    int count = 0;
    int i = 0;
    while (i < nums.length) {
      if (nums[i] < nums[i + 1]) {
        count++;
        i++;
      } else if (nums[i] > nums[i + 1]) {
        break;
      }
    }
    return count;
  }
}

void main() {
  Solution sl = Solution();
  sl.findLengthOfLCIS([2, 2, 2, 2, 2]);
}
