class CreateMonkeys < ActiveRecord::Migration
  def change
    create_table :monkeys do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
