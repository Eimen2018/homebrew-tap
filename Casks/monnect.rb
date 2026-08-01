cask "monnect" do
  version "0.1.3"
  sha256 "d7ecf6e715c1f515e149a74eaab114f186c9449a01b5db3953c69079e77a1a59"

  url "https://github.com/Eimen2018/monnect/releases/download/v#{version}/Monnect-#{version}.dmg"
  name "Monnect"
  desc "Switch a Magic Mouse and Keyboard between two Macs from the menu bar"
  homepage "https://github.com/Eimen2018/monnect"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on formula: "blueutil"

  app "Monnect.app"

  zap trash: [
    "~/Library/Application Support/Monnect",
    "~/Library/Preferences/com.aymen.monnect.plist",
    "~/Library/HTTPStorages/com.aymen.monnect",
  ]
end
