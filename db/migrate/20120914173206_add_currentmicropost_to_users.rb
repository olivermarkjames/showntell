class AddCurrentmicropostToUsers < ActiveRecord::Migration
  def change
    add_column :users, :currentmicropost, :integer
  end
end
