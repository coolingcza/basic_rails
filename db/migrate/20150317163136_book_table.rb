class BookTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :rating
      t.timestamps
    end
  end
end
