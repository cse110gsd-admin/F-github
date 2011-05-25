class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.date :date
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
