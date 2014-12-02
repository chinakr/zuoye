class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.text :content
      t.date :pubdate
      t.integer :account_id
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
