class Pet < ActiveRecord::Base
	belongs_to :user

	before_save :set_user_id

	protected
		def set_user_id
			self.user_id = User.order("Random()").first.id
		end
end
