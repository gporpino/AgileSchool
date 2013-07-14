class CreateStudentSponsors < ActiveRecord::Migration
  def change
    create_table :student_sponsors do |t|
      t.integer :student_id, :null => false
      t.integer :sponsor_id, :null => false

      t.timestamps
    end
  end
end
