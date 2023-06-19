//
//  LoginView.swift
//  TodoList
//
//  Created by Burit Boonkorn on 19/6/2566 BE.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModal()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get thing done", angle: 15, background: .pink)
                
                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                //Create Account
                
                VStack {
                    Text("New around here?")

                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
