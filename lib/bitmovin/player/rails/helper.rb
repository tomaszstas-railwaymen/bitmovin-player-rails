module Bitmovin::Player::Rails
	module Helper
		def bitmovin_player_script
			javascript_include_tag Rails.configuration.bitmovin_player["cdn_url"]
		end

		def bitmovin_player(options = {})
			result = <<-EOS
<div id="player"></div>
<script type="text/javascript">
		var conf = {
				key: "#{Rails.configuration.bitmovin_player["license_key"]}}",
				source: #{options.to_json}
		};
		var player = bitmovin.player("player");
		player.setup(conf).then(function(value) {
				// Success
				console.log("Successfully created bitmovin player instance");
		}, function(reason) {
				// Error!
				console.log("Error while creating bitmovin player instance");
		});
</script>
EOS
			result.html_safe
		end
	end
end
