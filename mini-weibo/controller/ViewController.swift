import UIKit

class ViewController: UIViewController {

     @IBOutlet weak var tableView : UITableView!
       
       let dataSource = CurrencyDataSource()
       
       lazy var viewModel : CurrencyViewModel = {
           let viewModel = CurrencyViewModel(dataSource: dataSource)
           return viewModel
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        self.title = "£ Exchange rate"
        
        self.tableView.dataSource = self.dataSource
        self.dataSource.data.addAndNotify(observer: self) { [weak self] _ in
            self?.tableView.reloadData()
        }
        self.viewModel.fetchCurrencies()
    }


}

