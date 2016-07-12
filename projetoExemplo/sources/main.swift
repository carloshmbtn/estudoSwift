enum ErroDivisao: ErrorProtocol {
	case DivisaoPorZero
}

class Pessoa {
	var name: String
	init(name: String){
		self.name = name
	}
	func getName() -> String {
		return self.name
	}
}

class Veiculo {
	var name: String
	var rodas: Int
	var dono: Pessoa
	init(name: String, rodas: Int, dono: Pessoa){
		self.name = name
		self.rodas = rodas
		self.dono = dono
	}

	func setDono(dono: Pessoa){
		self.dono = dono
	}
	func getDono() -> Pessoa {
		return self.dono
	}
	func alert(){
		print("chamei alert")
	}

}

func divisao(num1: Int, num2: Int) throws -> Int{
	if num2 == 0{
		throw ErroDivisao.DivisaoPorZero
	}
	return num1 / num2
}

var teste = Veiculo(name: "Carro", rodas: 2, dono: Pessoa(name: ""))
teste.setDono(dono: Pessoa(name: "Edison"))
print("Veículo: \(teste.name) - Rodas: \(teste.rodas) - Dono: \(teste.getDono().getName())")
teste.alert()

print("Leitura do teclado")

if let entrada = readLine(){
	print("Leitura: \(entrada)")
}

let hexa = 0x11
print("Inteiro: \(Int(hexa))")

let r = (1, "primeiro registro")
let (numero, string) = r
print("\(string)")

//nomear campo faz com que seja acessivel via atributo.

let r2 = (codigo: 1, mensagem: "primeiro registro")
print("\(r2.mensagem)")

//valor opcional
let text = "2233344"
let number = Int(text)

print("\(number)")
//exclamação ao final do arquivo indica que valor deve ser aceito mesmo sem teste
print("\(number!)")

if let number2 = Int(text) {
	print("\(number2)")
}
//teste pode ser feito posterior comparando com nil e usando ! para usar como n opcional
if number != nil {
	print("\(number!)")
}


//valor nil atribuido somente a variáveis opcionais
var v : Int? = nil
//var v2 : Int = nil -> erro de compilação

//variáveis opcionais n inicializadas setadas pra nil automaticamente
var i : Int?
print("\(i)")

// \" protege "
print("Caracter protegido: \"\"")

//várias condições de binding (caso defracasso)
if let primeiroNum = Int("3434"), segundoNum = Int("99999") where primeiroNum
< segundoNum {
	print("sucesso")
}
else{
	print("fracasso")
}
//várias condições de binding (caso de sucesso)
if let primeiroNum = Int("3434"), segundoNum = Int("99999") where primeiroNum
< segundoNum {
	print("sucesso")
}
else{
	print("fracasso")
}

//valor opcional, que pode ser usado a qualquer momento
//erros geram runtime, igualmente quando é usado ! no final da variável
let teste3 : String! = nil
//let teste4 : String = teste3 linha causa runtime (nil em string n opcional)

let teste4 : String! = "teste"
let teste5 : String = teste4

do{
	var resultado : Int = try divisao(num1: 4, num2: 0)
	print("Resultado: \(resultado)")
}catch ErroDivisao.DivisaoPorZero {
	print("Erro divisao")
}
