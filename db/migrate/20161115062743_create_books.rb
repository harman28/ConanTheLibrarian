class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :owner
      t.boolean :available, default: true

      t.timestamps
    end
  end

  def down
    drop_table :books
  end
end
