//
//  AddEditTableViewController.swift
//  2210992504_test2
//
//  Created by Vanshika on 23/11/24.
//

import UIKit

class AddEditTableViewController: UITableViewController {
    var meal: Meal?
    @IBOutlet weak var recipeNameTextField: UITextField!
    @IBOutlet weak var ingredientsTextField: UITextField!
    @IBOutlet weak var preparationTextField: UITextField!
    @IBOutlet weak var categoryTextField: UITextField!
    @IBOutlet weak var nutritionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Add/Edit Meals"
        updateUI()
        saveButton.isEnabled = false
        
    }
    init?(coder:NSCoder, meal: Meal?) {
        self.meal = meal
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func updateUI() {
       
        
    }
}
