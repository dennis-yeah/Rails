class Ztweet < ActiveRecord::Base
    belongs_to :zombie
    default_scope -> { order('created_at DESC') }
    validates :zombie_id, presence: true
    validates :content, presence: true, length: { maximum: 140 }
end