//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var sofritasButton: UIButton!
    @IBOutlet var barbacoaButton: UIButton!
    @IBOutlet var chickenButton: UIButton!
    @IBOutlet var steakButton: UIButton!
    @IBOutlet var carnitasButton: UIButton!
    @IBOutlet var whiteButton: UIButton!
    @IBOutlet var brownButton: UIButton!
    @IBOutlet var burritoButton: UIButton!
    @IBOutlet var bowlButton: UIButton!
    @IBOutlet var saladButton: UIButton!
    @IBOutlet var crispyButton: UIButton!
    @IBOutlet var softButton: UIButton!
    @IBOutlet var flourButton: UIButton!
    @IBOutlet var tacosButton: UIButton!
    @IBOutlet var withButton: UIButton!
    @IBOutlet var andButton: UIButton!
    @IBOutlet var riceButton: UIButton!
    @IBOutlet var blackButton: UIButton!
    @IBOutlet var pintoButton: UIButton!
    @IBOutlet var beansButton: UIButton!
    @IBOutlet var mildButton: UIButton!
    @IBOutlet var mediumButton: UIButton!
    @IBOutlet var hotButton: UIButton!
    @IBOutlet var cornButton: UIButton!
    @IBOutlet var salsaButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    @IBOutlet var guacButton: UIButton!
    @IBOutlet var sourCreamButton: UIButton!
    @IBOutlet var cheeseButton: UIButton!
    @IBOutlet var lettuceButton: UIButton!
    
    var keyboardView: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        deleteButton.addTarget(self, action: "doDelete", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "insertNewLine", forControlEvents: .TouchUpInside)
        sofritasButton.addTarget(self, action: "sofritas", forControlEvents: .TouchUpInside)
        barbacoaButton.addTarget(self, action: "barbacoa", forControlEvents: .TouchUpInside)
        chickenButton.addTarget(self, action: "chicken", forControlEvents: .TouchUpInside)
        steakButton.addTarget(self, action: "steak", forControlEvents: .TouchUpInside)
        carnitasButton.addTarget(self, action: "carnitas", forControlEvents: .TouchUpInside)
        whiteButton.addTarget(self, action: "white", forControlEvents: .TouchUpInside)
        brownButton.addTarget(self, action: "brown", forControlEvents: .TouchUpInside)
        burritoButton.addTarget(self, action: "burrito", forControlEvents: .TouchUpInside)
        bowlButton.addTarget(self, action: "bowl", forControlEvents: .TouchUpInside)
        saladButton.addTarget(self, action: "salad", forControlEvents: .TouchUpInside)
        crispyButton.addTarget(self, action: "crispy", forControlEvents: .TouchUpInside)
        softButton.addTarget(self, action: "soft", forControlEvents: .TouchUpInside)
        flourButton.addTarget(self, action: "flour", forControlEvents: .TouchUpInside)
        tacosButton.addTarget(self, action: "tacos", forControlEvents: .TouchUpInside)
        withButton.addTarget(self, action: "with", forControlEvents: .TouchUpInside)
        andButton.addTarget(self, action: "and", forControlEvents: .TouchUpInside)
        riceButton.addTarget(self, action: "rice", forControlEvents: .TouchUpInside)
        blackButton.addTarget(self, action: "black", forControlEvents: .TouchUpInside)
        pintoButton.addTarget(self, action: "pinto", forControlEvents: .TouchUpInside)
        beansButton.addTarget(self, action: "beans", forControlEvents: .TouchUpInside)
        mildButton.addTarget(self, action: "mild", forControlEvents: .TouchUpInside)
        mediumButton.addTarget(self, action: "medium", forControlEvents: .TouchUpInside)
        hotButton.addTarget(self, action: "hot", forControlEvents: .TouchUpInside)
        cornButton.addTarget(self, action: "corn", forControlEvents: .TouchUpInside)
        salsaButton.addTarget(self, action: "salsa", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "space", forControlEvents: .TouchUpInside)
        guacButton.addTarget(self, action: "guac", forControlEvents: .TouchUpInside)
        sourCreamButton.addTarget(self, action: "sourCream", forControlEvents: .TouchUpInside)
        cheeseButton.addTarget(self, action: "cheese", forControlEvents: .TouchUpInside)
        lettuceButton.addTarget(self, action: "lettuce", forControlEvents: .TouchUpInside)
        
    }
    
    func doDelete() {
        textDocumentProxy.deleteBackward()
    }
    
    func insertNewLine() {
        textDocumentProxy.insertText("\r\n")
    }
    
    func sofritas() {
        textDocumentProxy.insertText("sofritas ")
    }

    func barbacoa() {
        textDocumentProxy.insertText("barbacoa ")
    }
    
    func chicken() {
        textDocumentProxy.insertText("chicken ")
    }
    
    func steak() {
        textDocumentProxy.insertText("steak ")
    }
    
    func carnitas() {
        textDocumentProxy.insertText("carnitas ")
    }
    
    func white() {
        textDocumentProxy.insertText("white ")
    }
    
    func brown() {
        textDocumentProxy.insertText("brown ")
    }
    
    func burrito() {
        textDocumentProxy.insertText("burrito ")
    }
    
    func bowl() {
        textDocumentProxy.insertText("bowl ")
    }
    
    func salad() {
        textDocumentProxy.insertText("salad ")
    }
    
    func crispy() {
        textDocumentProxy.insertText("crispy ")
    }
    
    func soft() {
        textDocumentProxy.insertText("soft ")
    }
    
    func flour() {
        textDocumentProxy.insertText("flour ")
    }
    
    func tacos() {
        textDocumentProxy.insertText("tacos ")
    }
    
    func with() {
        textDocumentProxy.insertText("with ")
    }
    
    func and() {
        textDocumentProxy.insertText("and ")
    }
    
    func rice() {
        textDocumentProxy.insertText("rice ")
    }
    
    func black() {
        textDocumentProxy.insertText("black ")
    }
    
    func pinto() {
        textDocumentProxy.insertText("pinto ")
    }
    
    func beans() {
        textDocumentProxy.insertText("beans ")
    }
    
    func mild() {
        textDocumentProxy.insertText("mild ")
    }
    
    func medium() {
        textDocumentProxy.insertText("medium ")
    }
    
    func hot() {
        textDocumentProxy.insertText("hot ")
    }
    
    func corn() {
        textDocumentProxy.insertText("corn ")
    }
    
    func salsa() {
        textDocumentProxy.insertText("salsa ")
    }
    
    func space() {
        textDocumentProxy.insertText(" ")
    }
    
    func guac() {
        textDocumentProxy.insertText("guac ")
    }
    
    func cheese() {
        textDocumentProxy.insertText("cheese ")
    }
    
    func sourCream() {
        textDocumentProxy.insertText("sour cream ")
    }
    
    func lettuce() {
        textDocumentProxy.insertText("lettuce ")
    }

}
