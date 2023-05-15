class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :street
      t.integer :house_number
      t.string :neighborhood
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
