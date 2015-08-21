class Department < ActiveRecord::Base
  has_many :post
  belongs_to :faculty
end
