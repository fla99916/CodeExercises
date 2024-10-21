import Foundation

struct MergeSortedArray {
    static func merge(_ nums1: inout [Int],
                      _ m: Int,
                      _ nums2: [Int],
                      _ n: Int) {
        let newSize = m + n
        var num1Index = m-1, num2Index = n-1
        for newIndex in (0..<newSize).reversed()  {
            if num1Index < 0 {
                nums1[newIndex] = nums2[num2Index]
                num2Index -= 1
            } else if num2Index < 0 {
                break
            }
            else if nums1[num1Index] <= nums2[num2Index]{
                nums1[newIndex] = nums2[num2Index]
                num2Index -= 1
            } else {
                nums1[newIndex] = nums1[num1Index]
                num1Index -= 1
            }
        }
    }
}
