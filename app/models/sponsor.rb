class Sponsor < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true

  has_many :student_sponsors
  has_many :students, :through => :student_sponsors

  belongs_to :student

end
