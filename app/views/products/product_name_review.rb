class Product_Name_Review < ApplicationRecord::Base
#there is a picture_id foreign key referring to you in the comments table
belongs_to :review
end
