cask "brainfm" do
  version "0.0.180"
  sha256 :no_check

  url "https://download.brain.fm/darwin/arm64/Brain.fm-#{version}-arm64.dmg"
  name "Brain.fm"
  desc "Focus, relaxation and sleep music"
  homepage "https://brain.fm/"

  app "Brain.fm.app"

  zap trash: [
    "~/Library/Application Support/Brain.fm",
    "~/Library/Preferences/fm.brain.app.plist",
    "~/Library/Saved Application State/fm.brain.app.savedState"
  ]
end
