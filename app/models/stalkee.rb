class Stalkee < ActiveRecord::Base
	validates :twitter_handle, presence: true, length: {maximum: 15,minimum:5},uniqueness: { case_sensitive: false , message: "already exists in the Previously Stalked Table"}
end
