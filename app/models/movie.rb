class Movie < ActiveRecord::Base
  has_attached_file :poster, styles: { sized: '300x450#' }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
end
