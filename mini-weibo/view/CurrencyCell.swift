import UIKit

class CurrencyCell: UITableViewCell {

    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
//
    var currencyRate : Comments? {
        didSet {
            
            guard let currencyRate = currencyRate else {
                return
            }
            
            rateLabel?.text = "\(currencyRate.createdAt)"
            currencyLabel?.text = currencyRate.text
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
