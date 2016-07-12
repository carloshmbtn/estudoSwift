var nome = ""
print("String \"\(nome)\" é vazia? \(nome.isEmpty)")

var nome2 = "Carlos"
print("String \"\(nome2)\" é vazia? \(nome2.isEmpty)")

//acessando caracters em String

var animal = "cachorro"
for c in animal.characters {
    print(c)
}

//definicoes de caracter
var ct : Character = "z"
var ctv : [Character] = ["C", "a", "r", "l", "o", "s"]
print(String(ctv))
print(ct)

//adicionar caracter em String
var palavra = "carr"
var letra = "o"

palavra.append(letra)
print(palavra)

//usando \() fora do print
var str = "Nome: \(nome2)"
print(str)

//unicode
var uniCode = "\u{2665}" //coracao
print(uniCode)


var stringContada = "quantos caracters?"
print("\"\(stringContada)\" tem \(stringContada.characters.count) caracters")

for index in nome2.characters.indices {
    print(nome2[index])
}


var apple = "Apple"
apple.insert("2", at: apple.endIndex)
print(apple)

apple.remove(at: apple.index(before: apple.endIndex))
print(apple)

apple.insert(contentsOf: " Lisa".characters, at: apple.endIndex)
print(apple)


// let romeoAndJuliet = [
//     "Act 1 Scene 1: Verona, A public place",
//     "Act 1 Scene 2: Capulet's mansion",
//     "Act 1 Scene 3: A room in Capulet's mansion",
//     "Act 1 Scene 4: A street outside Capulet's mansion",
//     "Act 1 Scene 5: The Great Hall in Capulet's mansion",
//     "Act 2 Scene 1: Outside Capulet's mansion",
//     "Act 2 Scene 2: Capulet's orchard",
//     "Act 2 Scene 3: Outside Friar Lawrence's cell",
//     "Act 2 Scene 4: A street in Verona",
//     "Act 2 Scene 5: Capulet's mansion",
//     "Act 2 Scene 6: Friar Lawrence's cell"
// ]
//
// var act1SceneCount = 0
// for scene in romeoAndJuliet {
//     if scene.hasPrefix("Act 1 ") {
//         act1SceneCount += 1
//     }
// }
// print("There are \(act1SceneCount) scenes in Act 1")
//
//
//
// var mansionCount = 0
// var cellCount = 0
// for scene in romeoAndJuliet {
//     if scene.hasSuffix("Capulet's mansion") {
//         mansionCount += 1
//     } else if scene.hasSuffix("Friar Lawrence's cell") {
//         cellCount += 1
//     }
// }
// print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// // Prints "6 mansion scenes; 2 cell scenes"
