class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|

    	t.string :hobby
    	t.text :description
    	t.string :author

      t.timestamps
    end
  end
end
