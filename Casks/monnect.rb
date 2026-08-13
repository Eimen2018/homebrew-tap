cask "monnect" do
  version "0.1.4"
  sha256 "94791da3799fcfda764e258982759fce8b47e0e01efa643609559e6a031c9fa0"

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
