//
//  ViewController.swift
//  interfazDeRegistro
//
//  Created by Adrian on 08/10/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var usuarios: [UsuarioNuevo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let usuarioSave = UserDefaults.standard
        
        usuarios = usuarioSave.object(forKey: "usuarios") as? [UsuarioNuevo] ?? [UsuarioNuevo]()
        print(usuarios)
        
        for item in usuarios
        {
            print(item)
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){ }
    
    @IBAction func unwindRegistrado(segue: UIStoryboardSegue)
    {
        if let origin = segue.source as? RegistroDelUsuarioViewController
        {
            let data = origin.usuarioRegistrado
            usuarios.append(data!)
            print(usuarios)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "registro"
        {
            let destination = segue.destination as! RegistroDelUsuarioViewController
            destination.listaDeUsuarios = usuarios
        }
        if segue.identifier == "inicio"
        {
            let destination2 = segue.destination as! UsuarioIngresadoViewController
            
        }
    }
}

