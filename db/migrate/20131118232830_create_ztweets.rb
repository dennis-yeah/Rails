class CreateZtweets < ActiveRecord::Migration
  def change
    create_table :ztweets do |t|
      t.string :contents
      t.integer :zombie_id

      t.timestamps
    end
    add_index:ztweets, :zombie_id
  end
end
