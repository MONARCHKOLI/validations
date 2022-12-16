class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true ,length: {minimum: 10}
    validates :password, length: {minimum: 8}
    validates :user_name, presence: true
    # validates :date_of_birth,presence: true
    before_save  :date_checker

    def date_checker
       if self.date_of_birth.blank?
        errors.add(:age,"please provide date")
       else
        puts "date selected #{date_of_birth}"
        self.age = Date.today.year-self.date_of_birth.year
        puts self.age
       end 
    end

end
