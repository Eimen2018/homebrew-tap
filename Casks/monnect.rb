cask "monnect" do
  version "0.1.2"
  sha256 "63586c52d3db01c18029667db40c4012c4ca830fc323d6459b7a0f496662baac"

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
