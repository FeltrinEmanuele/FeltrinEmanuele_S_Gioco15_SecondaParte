//
//  ViewController.swift
//  FeltrinEmanuele_Gioco15
//
//  Created by EMANUELE FELTRIN on 30/10/2019.
//  Copyright © 2019 EMANUELE FELTRIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet var ArrayBottoni: [UIButton]!
    
    var matrice: [[Int]] = [[1, 2, 3, 4],[5, 6, 7, 8],[9, 10, 11, 12],[13, 14, 15, 0]]
    
        var rigaZero = 0
        var colonnaZero = 0

    @IBAction func btn_inizia(_ sender: Any) {
        for _ in 1...300
        {
           TrovaZero()
          if(Bool.random()==true)
          {
              MescolaOrizzontale()
          }
          else
          {
           MescolaVerticale()
          }
    }
        CambiaBottoni()
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    func TrovaZero(){
    for i in 0...3
    {
        for Q in 0...3
        {
              if (matrice[Q][i]==0)
              {
               colonnaZero = Q
               rigaZero = i
              }
        }
    }
}
    
    func CambiaBottoni()
    {
        var x = 0
        var y = 0
        for _ in 0...15
        {
            if(x==3)
            {
                ArrayBottoni[y*4+x].setTitle(String(matrice[y][x]), for: .normal)
                x = 0
                y = y + 1
            }
            else
            {
                ArrayBottoni[y*4+x].setTitle(String(matrice[y][x]), for: .normal)
                x = x + 1
            }
        }
    }
    
func MescolaOrizzontale()
{
        var SpostaOrizzontale = 0
        
       if(colonnaZero==3)
       {
         SpostaOrizzontale = 2
       }
       else if(colonnaZero == 0)
       {
         SpostaOrizzontale = 1
       }
       else if(colonnaZero == 1)
       {
         SpostaOrizzontale = Int.random(in: 0...2)
         while(SpostaOrizzontale==colonnaZero)
         {
            SpostaOrizzontale = Int.random(in: 0...2)
         }
       }
        else if(colonnaZero == 2)
       {
         SpostaOrizzontale = Int.random(in: 1...3)
          while(SpostaOrizzontale==colonnaZero)
         {
            SpostaOrizzontale = Int.random(in: 1...3)
         }
       }
       
            let NumeroSupp = matrice[SpostaOrizzontale][rigaZero]
            matrice[SpostaOrizzontale][rigaZero] = 0
            matrice[colonnaZero][rigaZero] = NumeroSupp
}
    
    
func MescolaVerticale()
{
     var SpostaVerticale = 0
        
       if(rigaZero==3)
       {
         SpostaVerticale = 2
       }
       else if(rigaZero == 0){
         SpostaVerticale = 1
       }
       else if(rigaZero == 1)
       {
         SpostaVerticale = Int.random(in: 0...2)
         while(SpostaVerticale==rigaZero)
         {
            SpostaVerticale = Int.random(in: 0...2)
            
         }
       }
        else if(rigaZero == 2)
       {
         SpostaVerticale = Int.random(in: 1...3)
          while(SpostaVerticale==rigaZero)
         {
            SpostaVerticale = Int.random(in: 1...3)
         }
       }
       
            let NumeroSupp = matrice[colonnaZero][SpostaVerticale]
            matrice[colonnaZero][SpostaVerticale] = 0
            matrice[colonnaZero][rigaZero] = NumeroSupp
    }
    
    
    @IBAction func SpostaTasselli(_ sender: UIButton) {
        
      //  var posTassello = matrice.firstIndex(of: sender)
        
        
    }
    
    
    
}
