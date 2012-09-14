class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :content
      t.integer :micropost_id

      t.timestamps
    end
  end
end
