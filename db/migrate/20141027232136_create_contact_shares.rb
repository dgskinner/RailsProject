class CreateContactShares < ActiveRecord::Migration
  def change
    create_table :contact_shares do |t|
      t.integer :user_id, null: false
      t.integer :contact_id, null: false
      
      t.timestamps
    end
    
    add_index :contact_shares, :user_id
    add_index :contact_shares, :contact_id
  end
end
