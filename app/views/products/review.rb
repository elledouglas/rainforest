class Review < ApplicationRecord::Base
  #there is a picture_id foreign key referring to you in the comments tabl
belongs_to :Product_Name_Review
end
