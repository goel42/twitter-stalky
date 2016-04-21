class Stalkee < ActiveRecord::Base
	validates :twitter_handle, presence: true, length: {maximum: 15,minimum:5},	uniqueness: { case_sensitive: false , message: "already exists in the Twiter Handles Table"}, format: { with: /^\w+$/, multiline: true, message: "only alphabets, numbers and _ allowed"}

end
