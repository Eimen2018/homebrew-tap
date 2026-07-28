cask "monnect" do
  version "0.1.0"
  sha256 "6eaf0d52cc23c5dd5bbff0a4ce501ed4f27b6e3f565561e7acde589f4fca6b5d"

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
