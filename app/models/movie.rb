class Movie < ActiveRecord::Base
  has_attached_file :poster
end
