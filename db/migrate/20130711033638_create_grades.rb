class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :description

      t.timestamps
    end
  end
end
