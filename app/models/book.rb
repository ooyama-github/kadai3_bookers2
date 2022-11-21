class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

  belongs_to :user
end


 #<Book:0x00007f430d5e11c0 id: nil, title: nil, body: nil, user_id: nil, created_at: nil, updated_at: nil>

 # Book.find_by(user_id)