FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
<<<<<<< HEAD
    sequence(:email) { |n| "person_#{n}@example.com"}   
=======
    sequence(:email) { |n| "person_#{n}@example.com"}
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
<<<<<<< HEAD
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
=======
    	admin true
    end
  end
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
end