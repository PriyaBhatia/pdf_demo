class UserPDFNew < Prawn::Document
	include PdfPartGenerator
	def initialize(user)
		super()
    @user = user
    logo
    detail
	end
	def logo
	  image "#{Rails.root}/app/assets/images/rails.png", :height => 60, :kerning => true, :at => [0, y - 20]
	end
	def detail
		font_size(12) do
			move_down 50
			formatted_text [{:text => "User Name"},{:text => " #{@user.name}" }]
			move_down 10
			formatted_text [{:text => "User Email"},{:text => " #{@user.eamil}" }]
		end
	end
end