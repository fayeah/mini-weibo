import Alamofire

struct CurrencyViewModel {

    weak var dataSource : GenericDataSource<Comments>?

    init(dataSource : GenericDataSource<Comments>?) {
        self.dataSource = dataSource
    }

    func fetchCurrencies() {
        let endpoint = "http://localhost:3000/moments?page=1&size=1"
        AF.request(endpoint).responseDecodable(of: [Comments].self) { (response) in
            
             DispatchQueue.main.async {
                switch response.result {
                case .success(let comments) :
                    print(comments)
//                    self.dataSource?.data.value = (converter as! Converter).rates
                    self.dataSource?.data.value = comments

                    break
                case .failure(let error) :
                    print("Parser error \(error)")
                    break
                }
            }
        }
    }
}
