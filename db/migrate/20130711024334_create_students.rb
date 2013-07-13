class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, :null => false
      t.date :born_date
      t.enum :gender

      t.timestamps
    end
  end
end
