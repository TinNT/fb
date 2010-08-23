class CreateTabs < ActiveRecord::Migration
  def self.up
    create_table :tabs do |t|
      t.integer :fb_page_id
      t.string :care_url

      t.timestamps
    end
  end

  def self.down
    drop_table :tabs
  end
end
