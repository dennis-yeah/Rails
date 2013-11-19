class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.string :email
      t.string :growl

      t.timestamps
    end
  end
end
