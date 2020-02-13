import Foundation

func quickSort(_ array: inout [Int], _ start: Int, _ end: Int ){
    //base case
    if start > end {
        return
    }

    //recursive case
    let pIndex = partition(&array, start, end)
    quickSort(&array, start, pIndex - 1)
    quickSort(&array, pIndex + 1, end)
    
}

func partition(_ array: inout [Int], _ start: Int, _ end: Int) -> Int {
     let pivot = array[end]
     var pIndex = start

    for i in start..<end {
        if(array[i] < pivot){
            var temp = array[i]
            array[i] = array[pIndex]
            array[pIndex] = temp
            pIndex += 1
        }
    }

    var temp = array[pIndex]
    array[pIndex] = pivot
    array[end] = temp

    return pIndex
}


var arr = [13, 87, 20, 45, 2, 90, 0, 1, 7]
quickSort(&arr, 0, arr.count - 1)
print(arr)
