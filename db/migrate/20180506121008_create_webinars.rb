class CreateWebinars < ActiveRecord::Migration[5.2]
  def change
    create_table :webinars do |t|
      t.string :title
      t.string :speaker
      t.text :about
      t.date :date
      t.string :image
      t.string :embed
      t.text :content
      t.integer :sticky_order
      t.integer :user_id

      t.timestamps
    end
  end
end
