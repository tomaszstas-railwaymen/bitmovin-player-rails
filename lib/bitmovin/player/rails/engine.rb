require 'rails'
module Bitmovin::Player::Rails
	class Engine < ::Rails::Engine
		ActiveSupport.on_load(:action_view) do
			include Helper
		end
	end
end
