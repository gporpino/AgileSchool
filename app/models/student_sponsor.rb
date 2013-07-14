class StudentSponsor < ActiveRecord::Base
  attr_accessible :sponsor_id, :student_id

  belongs_to :sponsor
  belongs_to :student
end
