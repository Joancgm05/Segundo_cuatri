// AUTOR: Joan Carlos García Méndez
// FECHA: 19 - 04 - 2024
// EMAIL: alu 0101656571@ull.edu.es
// VERSION: 2.0
// ASIGNATURA: Algoritmos y Estructuras de Datos
// PRÁCTICA Nº: 5
// ESTILO: Google C++ Style Guide
// COMENTARIOS: Clase RPN (Reverse Polish Notation)

#ifndef RPNT_H_
#define RPNT_H_

#include <iostream>
#include <cctype>
#include <cmath>
//#include <cstdlib>

#include "queue_l_t.h"

// Clase RPN (Reverse Polish Notation)
template <class T> 
class rpn_t {
 public:
  // constructor
 rpn_t(void) : stack_() {}

  // destructor
  ~rpn_t() {}

  // operaciones
  const int evaluate(queue_l_t<char>&); // evalúa una expresión en notación polaca inversa

 private: 
  T stack_; // pila de la calculadora
  void operate_(const char operador); // realiza una operación
};


// operaciones
template<class T> const int rpn_t<T>::evaluate(queue_l_t<char>& q) {
  while (!q.empty()) 	{
    char c = q.front();
    
    q.pop();
    std::cout << "Sacamos de la cola un carácter: " << c;

    if (isdigit(c)) {
      int i = c - '0';
      // poner código
      stack_.push(i);
      std::cout << " (es un dígito) " << std::endl
		<< "   Lo metemos en la pila..." << std::endl;
    } else {
      std::cout << " (es un operador)" << std::endl;
      // poner código
      operate_(c); // operamos
    }
  }
  // poner código
  return stack_.top(); // devolvemos el resultado
}

template <class T>
void rpn_t<T>::operate_(const char c) {  // int operand1, int operand2
  assert(c == '+' || c == '-' || c == '*' || c == '/' || c == '^' || c == 'r' || // + suma, - resta, * multiplicación, / división, ^ potencia, r raíz cuadrada
         c == 'c' || c == 'l' || c == '%' || c == '<' || c == '>' || c == 'n' || // c cuadrado, l logaritmo base 2, % módulo, < menor que, > mayor que, n negativo
         c == 'L' || c == 'C' || c == 'S' || c == 'T' || c == 'b' || c == 'h' ); // L ln, C coseno, S seno, T tangente, b raiz cubica, h raíz cuadrada de la suma de los cuadrados de dos nº
  // poner código
  double result;
  double second_term = stack_.top();  // extraemos el top de la pila
  stack_.pop();                       // volvemos a extraer

  std::cout << "   Sacamos de la pila un operando: " << second_term << std::endl;
  if (c == 'r' || c == 'l' || c == 'c' || c == 'n' || c == 'L' || c == 'C' || 
      c == 'S' || c == 'T' || c == 'b'){
    switch (c) {
      case 'r':
        result = sqrt(second_term);
        break;
      case 'c':
        result = pow(second_term, 2);
        break;
      case 'l':
        result = log2(second_term);
        break;
      case 'n':
        result = -second_term;
        break;
      case 'L':
        result = log(second_term);
        break;
      case 'C':
        result = cos(second_term);
        break;
      case 'S':
        result = sin(second_term);
        break;
      case 'T':
        result = tan(second_term);
        break;
      case 'b':
        result = cbrt(second_term);
        break;
      default:
        std::cout << "No se insertó ningún carácter válido para operar" << std::endl;
        exit(EXIT_SUCCESS);
    }
    stack_.push(result);  // devolvemos el resultado
    std::cout << "Metemos en la pila el resultado: " << result << std::endl;
  }
  // poner código
  else {
    int top_term = stack_.top();
    stack_.pop();
    std::cout << "Sacamos de la pila otro operando: " << top_term << std::endl;

    switch (c) {
      case '+':
        // poner código
        result = top_term + second_term;
        break;
        // poner código resto de operadores
      case '-':
        result = top_term - second_term;
        break;
      case '*':
        result = top_term * second_term;
        break;
      case '/':
        result = top_term / second_term;
        break;
      case '^':
        result = pow(top_term, second_term);
        break;
      case '%':
        result = (top_term / 100) * second_term;
        break;
      case '<':
        if (top_term < second_term) {
          result = top_term;
        } else {
          result = second_term;
        }
        break;
      case '>':
        if (top_term > second_term) {
          result = top_term;
        } else {
          result = second_term;
        }
        break;
      case 'h':
        result = hypot(top_term, second_term);
        break;
    }

    // poner código
    stack_.push(result);  // devolvemos el resultado
    std::cout << "Metemos en la pila el resultado: " << result << std::endl;
  }
}

 
#endif  // RPNT_H_