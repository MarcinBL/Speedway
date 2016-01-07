class Rider < ActiveRecord::Base
    belongs_to :team, dependent: :destroy
   mount_uploader :photo, PhotoUploader
end
