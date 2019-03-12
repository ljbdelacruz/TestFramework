//
//  CellDemoViewController.swift
//  TestingFrameworks
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit
import UITableCollectionCells

class CellDemoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items:[LanguageModel]=[];
    @IBOutlet weak var LanguageTVSample: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.LanguageTVSample.delegate=self;
        self.LanguageTVSample.dataSource=self;
        self.setupUICell()
        self.items=LanguageModel.setupArray();
        self.LanguageTVSample.reloadData();
    }

}
extension CellDemoViewController{
    func setupUICell(){
        self.LanguageTVSample.delegate=self;
        self.LanguageTVSample.dataSource=self;
        self.LanguageTVSample.registerCustomCell(nibname: LanguageCellTableViewCell.nibname, cellidentifier: LanguageCellTableViewCell.identifier);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LanguageCellTableViewCell.identifier, for: indexPath) as! LanguageCellTableViewCell
        let row=indexPath.row;
        cell.index=row;
        cell.UILangLabel.text=self.items[row].label;
        cell.UIFlagImage.image=self.items[row].image;
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if let cell = tableView.cellForRow(at: indexPath){
            let lcell=(cell as! LanguageCellTableViewCell);
            lcell.ToggleCheckMark(index: indexPath.row);
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //deselect item
        if let cell = tableView.cellForRow(at: indexPath){
            let lcell=(cell as! LanguageCellTableViewCell);
            lcell.Deselect();
        }
    }
}
