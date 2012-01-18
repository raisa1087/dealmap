class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :rss_deal_id
      t.string :title
      t.text :description
      t.string :deal_url
      t.string :deal_thumb
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
