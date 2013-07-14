class AddSponsorToStudent < ActiveRecord::Migration
  def change

  	alter_table :students do |t|
      t.integer :financial_sponsor_id
    end

  	
  end
end
