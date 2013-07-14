class Student < ActiveRecord::Base

  attr_accessible :born_date, :name, :gender, :financial_sponsor
  
  enum_attr :gender, %w(masculino feminino)

  validates :name, :presence => true

  has_many :student_sponsors
  has_many :sponsors, :through => :student_sponsors

  has_one :financial_sponsor, :class_name => 'Sponsor', :foreign_key => 'id'


end
