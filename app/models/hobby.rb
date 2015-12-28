class Hobby < ActiveRecord::Base
	validates :hobby_name, :presence => true, :length => { :maximum => 150, :minimum => 3 }
	validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3 }
end
