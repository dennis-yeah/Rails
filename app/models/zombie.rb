class Zombie < ActiveRecord::Base
	has_many :ztweets, dependent: :destroy
    before_save { self.email = email.downcase }
    validates :name, presence: true, uniqueness: true,
                      length: { maximum: 50 },
                      uniqueness: { case_sensitive: false }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
end
