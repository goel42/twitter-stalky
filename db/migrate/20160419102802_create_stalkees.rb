class CreateStalkees < ActiveRecord::Migration
  def change
    create_table :stalkees do |t|
    	t.string :twitter_handle
      	
      	t.timestamps null: false
    end
  end
end
