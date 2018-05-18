class CreateBookUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :book_users do |t|
      t.text :review
      t.integer :rating
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
