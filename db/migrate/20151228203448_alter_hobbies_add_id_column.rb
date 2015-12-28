class AlterHobbiesAddIdColumn < ActiveRecord::Migration
  def change
  	add_column :hobbies, :hobby_id, :integer
  end
end
