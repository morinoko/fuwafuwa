class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	default_scope -> { order('created_at DESC') }
end
