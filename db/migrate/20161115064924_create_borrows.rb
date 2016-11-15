class CreateBorrows < ActiveRecord::Migration[5.0]
  def change
    create_table :borrows do |t|
      t.string :borrower
      t.references :book
      t.datetime :returned_at

      t.timestamps
    end
  end

  def down
    drop_table :borrows
  end
end
