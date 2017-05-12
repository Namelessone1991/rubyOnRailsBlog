class Article < ApplicationRecord
    validates :title, presence: true,
    length: { minimum: 5, too_short: "%{count} is the minimun characters for the title" },
    length: {maximum: 50, too_long: "%{count} characters is the maximun allowed"}

    validates :text, presence: true,
    length: {maximum: 2000, too_long: "%{count} characters is the maximum allowed"}


    has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
                   
end
