<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed

class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
<<<<<<< HEAD
end
=======
end
=======
class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
>>>>>>> 148c8d617f3eacbd8be20c89085e047a789f2aed
