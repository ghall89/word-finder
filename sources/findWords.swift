import Foundation

func findWords(_ grid: [[String]], _ wordsToFind: [String]) -> [String] {
	var testCount = 0
	var words: [String] = []
	
	// check by row
	for row in grid {
		for (idx, _) in row.enumerated() {
			let arrToTest = row[idx ... row.count - 1]
			
			testArr(Array(arrToTest))
		}
	}
	
	// check by column
	for (idx, _) in wordsToFind[0].enumerated() {
		var column: [String] = []
		for row in grid {
			column.append(row[idx])
		}
		for (idx, _) in column.enumerated() {
			let arrToTest = column[idx ... column.count - 1]
			testArr(Array(arrToTest))
		}
	}
	
	// check diagonally
	for (rowIdx, row) in grid.enumerated() {
		for (charIdx, _) in row.enumerated() {
			var diag: [String] = []
			
			for itr in Array(charIdx...row.count - 1) {
				let rowToGet = rowIdx + itr
				let charToGet = charIdx + itr

				if rowToGet < grid.count && charToGet < row.count {
					let char = grid[rowToGet][charToGet]
					diag.append(char)
				}
			}
			
			for (diagIdx, _) in diag.enumerated() {
				let arrToTest = diag[diagIdx ... diag.count - 1]
				testArr(Array(arrToTest))
			}
		}
	}
	
	print("Tested \(testCount) iterations")
	
	func testArr(_ arrToTest: [String]) {
		var testVal = ""
		
		for char in arrToTest {
			testCount += 1
			testVal.append(char)
			print(testVal)
			if wordsToFind.contains(testVal.lowercased()) {
				words.append(testVal)
			}
		}
	}
	
	return words
}
