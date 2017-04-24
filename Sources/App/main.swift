import Vapor
import MongoKitten

let drop = Droplet()

let server = try Server("mongodb://test:test@localhost:27017")

let database = server["test"]

try database["Product"].insert(Document([ "name": "Chocolate Cake" ]))

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())

drop.run()
