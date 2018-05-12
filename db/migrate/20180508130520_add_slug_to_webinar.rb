class AddSlugToWebinar < ActiveRecord::Migration[5.2]
  def change
    add_column :webinars, :slug, :string
  end
end
