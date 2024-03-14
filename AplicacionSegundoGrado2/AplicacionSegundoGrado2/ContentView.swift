//
//  ContentView.swift
//  AplicacionSegundoGrado2
//
//  Created by TICandBOT on 14/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var xCuadrado :Double = 0
    @State private var x :Double = 0
    @State private var num :Double = 0
    @State private var sol1 :Double = 0
    @State private var sol2 :Double = 0
    var body: some View {
        ZStack{
            VStack {
                Text("Calculadora segundo grado")
                HStack{
                    Text(String(format: "%.2f", xCuadrado))
                    Text("x^2")
                    Text("+")
                    
                    Text(String(format: "%.2f", x))
                    Text("x")
                    Text("+")
                    Text(String(format: "%.2f", num))
                    Text("= 0")
                }
                Button("Calcular", action: {
                    sol1 = (-x+sqrt(x*x-4*xCuadrado*num))/2*xCuadrado
                    sol2 = (-x-sqrt(x*x-4*xCuadrado*num))/2*xCuadrado
                })
                .padding()
                .background(Color.red.opacity(0.5)) // Color verde claro
                .cornerRadius(10) // Bordes redondeados
                Text("+ = \(String(format: "%.2f", sol1))")
                Text("- = \(String(format: "%.2f", sol2))")
                
                HStack{
                    Text("a")
                    TextField("", value: $xCuadrado, formatter: NumberFormatter())
                                .keyboardType(.numberPad) // Esto limita el teclado solo a números
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                    Button("-", action: {
                        xCuadrado = -xCuadrado
                    })
                    .padding()
                    .background(Color.green.opacity(0.5)) // Color verde claro
                    .cornerRadius(10) // Bordes redondeados
                }
                HStack{
                    Text("b")
                    TextField("", value: $x, formatter: NumberFormatter())
                                .keyboardType(.numberPad) // Esto limita el teclado solo a números
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                    Button("-", action: {
                        x = -x
                    })
                    .padding()
                    .background(Color.green.opacity(0.5)) // Color verde claro
                    .cornerRadius(10) // Bordes redondeados
                }
                HStack{
                    Text("c")
                    TextField("", value: $num, formatter: NumberFormatter())
                                .keyboardType(.numberPad) // Esto limita el teclado solo a números
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                    Button("-", action: {
                        num = -num
                    })
                    .padding()
                    .background(Color.green.opacity(0.5)) // Color verde claro
                    .cornerRadius(10) // Bordes redondeados
                }
                Spacer()
            }
            .padding()
        }
        .background{
            Color.gray
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
