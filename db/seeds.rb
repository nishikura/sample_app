
# ユーザー

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
<<<<<<< HEAD
               password_confirmation: password)
               activated: true,
               activated_at: Time.zone.now)
<<<<<<< HEAD
end


# マイクロポスト

=======
               password_confirmation: password
              activated: true,
              activated_at: Time.zone.now)
end

# マイクロポスト
>>>>>>> following-users
=======
end


# マイクロポスト

>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e

# リレーションシップ

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
<<<<<<< HEAD
=======
# リレーションシップ
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
>>>>>>> following-users
=======
>>>>>>> 11ad385fd0409f3f71c7025950dfe7559a55046e
