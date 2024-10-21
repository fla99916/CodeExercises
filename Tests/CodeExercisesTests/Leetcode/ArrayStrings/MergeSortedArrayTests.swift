import Testing
@testable import CodeExercises

struct MergeSortedArrayTests {
    @Test func test1() {
        var nums1 = [2,0]
        let m = 1
        let nums2 = [1]
        let n = 1
        
        MergeSortedArray.merge(&nums1, m, nums2, n)
        
        let output = [1,2]//[1,2,2,3,5,6]
        
        #expect(nums1 == output)
    }
}
