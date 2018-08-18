//Workout struct
import Firebase
import FirebaseDatabase

struct Workout {
    let ref: DatabaseReference?
    let name : String
    let bodyPart: String
    let equipment: String
    let userLevel: String
    let sets: Int
    let day: Int
    
    init(name : String,bodyPart: String, equipment: String,userLevel: String, sets: Int,day: Int) {
        self.ref = nil
        self.name = name
        self.bodyPart = bodyPart
        self.equipment = equipment
        self.userLevel = userLevel
        self.sets = sets
        self.day = day
    }
    
    init?(snapshot: DataSnapshot) {
        //if somethoing goes wrong in this init we return nil
        guard
            let value = snapshot.value as? [String: AnyObject],
            let name = value["name"] as? String,
            let bodyPart = value["bodyPart"] as? String,
            let equipment = value["equipment"] as? String,
            let userLevel = value["userLevel"] as? String,
            let sets = value["sets"] as? Int,
            let day = value["day"] as? Int else {
            return nil
        }
        self.ref = snapshot.ref
        self.name = name
        self.bodyPart = bodyPart
        self.equipment = equipment
        self.userLevel = userLevel
        self.sets = sets
        self.day = day
    }
}

