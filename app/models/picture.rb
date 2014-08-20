class Picture < ActiveRecord::Base
	 has_attached_file :avatar, :styles => { :thumb => "100x100#", :medium => "500x500" }, :default_url => "/images/:style/missing.png"
 	 validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
 	 has_many :comments

	def picture_show(size)
  	# no url but there is an avatar
	  	if !(self.avatar_content_type.nil?)
	  		self.avatar.url(size)
	  	# no avatar but there is a url
	  	elsif !(self.url.nil?)
	  		self.url
	  	# otherwise
		else
			"nothing to see here"
		end
	end
end