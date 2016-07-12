//definição de várias constantes ao mesmo tempo

let (x,y) = (1,2)
print(y)

//concatenar strings
let texto = "hello "+"world."
print(texto)

let a = 10 % 3
print(a)

let b = 1
let c = -b
print(c)


print((1, "zebra") < (2, "anta"))
print((1, "anta") < (2, "zebra"))
print((2, "zebra") < (2, "anta")) //false
print((2, "anta") < (2, "zebra")) //true
print((2, "zebra") == (2, "zebra"))

//operador ternário
var temDesconto = true
var desconto = 2
var preco = 10

print("Total: \(preco + (temDesconto ? -desconto : 0))")

//forcar opcional com ternário (forma longa)
var nome : String?
//nome = nil resposta: user?
nome = "Carlos"
var nomeDefault = "user?"
print("Nome usuário: \(nome != nil ? nome! : nomeDefault)")

//forcar opcional com ternário (forma longa)
var nome2 : String?
//nome2 = "Carlos"
var nomeDefault2 = "user?"
print("Nome usuário: \(nome2 ?? nomeDefault2)")
