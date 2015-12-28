class AlterHobbiesChangeColumn < ActiveRecord::Migration
  def change
  	remove_column :hobbies, :hobby
  	add_column :hobbies, :hobby_name, :string
  end
end
