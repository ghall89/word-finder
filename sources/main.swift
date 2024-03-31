import Foundation

func main() {
	let testGrid: [[String]] = [
		["A", "P", "P", "L", "E", "T", "V", "E", "L", "F"],
		["M", "X", "Y", "C", "A", "M", "X", "L", "S", "E"],
		["A", "M", "E", "T", "R", "O", "W", "X", "W", "I"],
		["C", "V", "H", "E", "J", "M", "Y", "I", "F", "T"],
		["S", "R", "P", "N", "Y", "I", "N", "I", "G", "S"],
		["W", "I", "L", "T", "U", "L", "A", "S", "O", "A"],
		["I", "Q", "M", "L", "W", "I", "I", "C", "G", "T"],
		["F", "S", "N", "F", "G", "N", "R", "S", "W", "F"],
		["J", "T", "Z", "O", "A", "C", "P", "M", "E", "S"],
		["K", "E", "W", "A", "T", "Y", "P", "R", "E", "D"],
	]
	
	let wordsToFind = [
		"apple",
		"axe",
		"mac",
		"mom",
		"red",
		"row",
		"sim",
		"swift",
		"tent",
	]
	
	let foundWords = findWords(testGrid, wordsToFind)
	
	print("Found \(foundWords.count) out of \(wordsToFind.count) words:", foundWords)
}

main()
