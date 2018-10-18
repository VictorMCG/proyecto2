//
//  RegistroDelUsuarioViewController.swift
//  interfazDeRegistro
//
//  Created by Adrian on 08/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class RegistroDelUsuarioViewController: UIViewController {
    
    //MARK: Cajas
    var listaDeUsuarios = [UsuarioNuevo]()
    var usuarioRegistrado : UsuarioNuevo!

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apodo: UITextField!
    @IBOutlet weak var edad: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    @IBOutlet weak var validarContraseña: UITextField!
    @IBOutlet weak var errorDeContraseña: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //MARK: Registro de Usuario
        errorDeContraseña.alpha = 0
        
        
        
    }
    
    
    
    @IBAction func registrar(_ sender: UIButton)
    {
        //MARK: Datos guardados
       
        
        if contraseña.text == validarContraseña.text
        {
            errorDeContraseña.alpha = 0
            usuarioRegistrado = UsuarioNuevo(nombreDeUsuario: "\(nombre.text)", apodo: "\(apodo.text)", edad: "\(edad.text)", contraseña: "\(contraseña.text)", validarContraseña: "\(validarContraseña.text)")
        }
        else
        {
            errorDeContraseña.alpha = 1
        }
    
}
}
