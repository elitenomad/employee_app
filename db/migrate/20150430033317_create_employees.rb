class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.integer :ssn
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :about
      t.string :interests

      t.timestamps null: false
    end
  end
end
