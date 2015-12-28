class AlterHobbiesChangeColumnBackToHobby < ActiveRecord::Migration
  def change
  	remove_column :hobbies, :hobby_name
  	add_column :hobbies, :hobby, :text
  end
end
