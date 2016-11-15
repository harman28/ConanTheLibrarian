class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :owner
    end
  end

  def down
    drop_table :books
  end
end
