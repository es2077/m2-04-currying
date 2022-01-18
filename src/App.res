/**
 * Curry e Partial Application/Aplicação Parcial
 * - O que é curry?
 * - O que é partial application?
 * - Vantagens
 * - Funções no ReScript são "currified"/"currificadas" por padrão
 * - Currying em argumentos posicionais
 * - Currying em argumentos nomeados
 * - Interoperabilidade e output em JavaScript
 * - Problemas e como "descurrificar" funções
 */

let sum = (a, b) => a + b
let addOne = sum(1)

let saySomething = (~message, name) => Js.log(`${message}, ${name}`)
let sayHello = saySomething(~message="Hello")
let saySomethingToAlonzo = saySomething("Alonzo")

let sumUncurried = (. a, b) => a + b
let result = sumUncurried(. 1, 2)

@react.component
let make = () => {
  <div className="main-container">
    <h1> {`Hello from ReScript and Vite 😄`->React.string} </h1>
  </div>
}
