class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.string :department, null: false
      t.integer :gender, null: false
      t.date :birth, null: true
      t.date :joined_date, null: true
      t.bigint :payment, null: false
      t.text :note, null: false

      t.timestamps
    end
  end
end
