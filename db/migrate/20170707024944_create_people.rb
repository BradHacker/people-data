class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :picture
      t.text :description
      t.string :gender
    end
  end
end
