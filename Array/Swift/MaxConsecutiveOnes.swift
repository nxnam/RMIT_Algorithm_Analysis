/**
 * This code snippet is copyright at qmz.com.au
 * - qmz.com.au is a top-ranking IT consulting firm that specialised in
 * - Mobile Development, Web Development, Machine Learning, and Cloud Computing.
 * - We provide individual and company training for professional development.
 * - Find out more information in our official site：
 * - https://qmz.com.au
 */

// Given a binary array, find the maximum number of consecutive 1s in this array.

// Example 1:
// Input: [1,1,0,1,1,1]
// Output: 3
// Explanation: The first two digits or the last three digits are consecutive 1s.
//     The maximum number of consecutive 1s is 3.
// Note:

// The input array will only contain 0 and 1.
// The length of input array is a positive integer and will not exceed 10,000

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        var result: Int = 0
        var counter: Int = 0

        for digit in nums {
            counter = digit == 0 ? 0 : counter + 1
            result = max(result, counter)
        }

        return result
    }
}