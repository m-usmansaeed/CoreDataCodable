//: [Previous](@previous)

import Foundation


final class Post: Decodable {
    let id: Id<Post>
    let title: String?
    let webURL: URL?
    let isSelected: Bool?

    init(from decoder: Decoder) throws {
        let map = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try map.decode(.id)
        self.webURL = try? map.decode(.webURL)
        self.title = try map.decodeIfPresent(.title)
        self.isSelected = try map.decodeIfPresent(.isSelected)
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case webURL
        case title
        case isSelected = "selected"
    }
}


let json = """
{
    "id": "pos_1",
    "webURL": "http://apple.com/",
    "selected": true
}
"""

do {
    let post = try JSONDecoder().decode(Post.self, from: json.data(using: .utf8)!)
    print(post.id)
    print(post.webURL ?? "webURL")
    print(post.title ?? "Not Found")
    print(post.isSelected)


} catch {
    print(error)
}

//: [Next](@next)

