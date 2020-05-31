//
//  NyokittoViewController.swift
//  NyokittoMenu
//
//  Created by JotaroSugiyama on 2020/05/31.
//  Copyright © 2020 JotaroSugiyama. All rights reserved.
//

import UIKit
import PanModal

class NyokittoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView = UITableView()  //tableview定義
    var array: [String] = ["選択肢1","選択肢2"]   //選択肢の配列定義
    
    let headerView:UIView = UIView()    //headerView定義
    let label: UILabel = UILabel()  //headerViewに載せるラベル定義

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self   //delegate設定
        tableView.dataSource = self //dataSource設定
        tableView.frame = CGRect(x:0, y:0, width:UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height)  //位置設定
        tableView.isScrollEnabled = false   //スクロールさせない
        tableView.sectionHeaderHeight = 40  //headerの高さ
        tableView.separatorStyle = .none    //区切り線消す
        self.view.addSubview(tableView) //viewにtableviewを追加
    }
    
    override func viewDidLayoutSubviews() {
        label.text = "共有"
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14)
        label.frame = CGRect(x: 0, y: 0, width: headerView.frame.width, height: headerView.frame.height)
        headerView.addSubview(label)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count  //rowの数を返す
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = array[indexPath.row]
        return cell //cellを返す
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return headerView   //headerViewを使うよ！
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)    //選択解除
        /*
         
            ここになんやかんや書く
         
         */
    }

}


extension NyokittoViewController: PanModalPresentable {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent    //ステータスバーの色
    }

    var panScrollable: UIScrollView? {
        return nil
    }

    var longFormHeight: PanModalHeight {
        return .contentHeight(150)  //ニョキっとメニューの高さ
    }

    var anchorModalToLongForm: Bool {
        return false
    }
}

