cask "monnect" do
  version "0.1.1"
  sha256 "fe1c6948962e5b9f3f54309b7db1727a5edbcc264f65851bcf00305585f9fbc2"

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
