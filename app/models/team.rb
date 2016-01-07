class Team < ActiveRecord::Base
    has_many :riders, dependent: :destroy
end
