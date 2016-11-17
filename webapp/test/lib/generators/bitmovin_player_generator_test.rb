require 'test_helper'
require 'generators/bitmovin_player/bitmovin_player_generator'

class BitmovinPlayerGeneratorTest < Rails::Generators::TestCase
  tests BitmovinPlayerGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
