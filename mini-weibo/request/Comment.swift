struct User: Decodable {
  let id: Int
  let screenName: String
  let name: String
  
  enum CodingKeys: String, CodingKey {
    case id
    case screenName  = "screen_name"
    case name
  }
}

struct Comments: Decodable {
  let createdAt: String
  let id: Int
  let text: String
//  let user: [User]
  
  enum CodingKeys: String, CodingKey {
    case createdAt = "created_at"
    case id
    case text
//    case user = "user"
  }
}

//struct Comments: Decodable {
//    let comments: [Comment]
//}
