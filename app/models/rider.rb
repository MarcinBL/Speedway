class Rider < ActiveRecord::Base
    belongs_to :team, dependent: :destroy
   mount_uploader :photo, PhotoUploader
end
# It returns the articles whose titles contain one or more words that form the query
  

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end



