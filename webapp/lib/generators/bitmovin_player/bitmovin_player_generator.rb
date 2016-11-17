require 'httparty'
class BitmovinPlayerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
	@api_key

	def install
		readme File.expand_path('.././README', __FILE__)
		@api_key = ask('Please enter your Bitmovin-Api-Key: ')

		default_versions = fetch_player_versions

		puts "Available Player versions:"
		default_versions.each_with_index do |version, index|
			puts "#{index}) [#{version["category"]}] #{version["version"]}"
		end
		default = default_versions.last

		player_index = ask("What player version do you want to install? (#{default_versions.length - 1}): ")
		player_index = default_versions.length - 1 if (player_index.blank?) 
		selected_version = default_versions[player_index.to_i]

		puts "Installing Player `#{selected_version["version"]}`"

		@cdn_url = selected_version["cdnUrl"]
		@license_key = get_license_key
		template "config.yml.erb", "config/bitmovin_player.yml"
		application "config.bitmovin_player = config_for(:bitmovin_player)"
	end

	private
	def fetch_player_versions
		headers = { "bitcodin-api-key" => @api_key }
		response = HTTParty.get('https://app.bitmovin.com/api/player-versions', headers: headers)
		check_api_response!(response)
		player_versions = JSON.parse(response.body)

		default_versions = player_versions.select { |version| version["isDefault"] == true }
	end

	def check_api_response!(response)
		if (response.code == 401)
			abort("Unrecognized API-Key - please try again")
		end
	end

	def get_license_key
		headers = { "bitcodin-api-key" => @api_key }
		response = HTTParty.get('https://app.bitmovin.com/api/bitdash-licensing', headers: headers)
		check_api_response!(response)
		body = JSON.parse(response.body)
		body["licenseKey"]
	end
end
