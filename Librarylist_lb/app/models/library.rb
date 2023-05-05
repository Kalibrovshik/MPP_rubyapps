class Library < ApplicationRecord
    validates :libraryname, presence: true, length: {minimum:2, maximum:40}
    validates :author, presence: true, length: {minimum:2}
    validates :genre, presence: true, length: {minimum:2, maximum:40}
    validates :bookname, presence: true, length: {minimum:2}
    validates :readers_card, presence: false
    validates :user, presence: false

    def formatted_created_at
        created_at.strftime('%Y-%m-%d %H:%M:%S')
    end
end
