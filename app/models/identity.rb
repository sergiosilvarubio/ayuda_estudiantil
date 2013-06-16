class Identity < OmniAuth::Identity::Models::ActiveRecord
	validates_presence_of :name
	validates_uniqueness_of :email	
	validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@(alumnos\.)?utalca.cl$/i
end
