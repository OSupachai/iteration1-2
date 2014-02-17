class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :province
      t.string :position
      t.string :qualification
      t.integer :numb
      t.datetime :start_date
      t.datetime :deadline
      t.string :link

      t.timestamps
    end
  end
end
