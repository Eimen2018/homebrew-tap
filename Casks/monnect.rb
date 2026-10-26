cask "monnect" do
  version "0.2.0"
  sha256 "8227e77cbc6bf7d6fac3d0733248ae07f19c4762b9f77ab6cd645112758f6c0a"

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

  app "Monnect.app"

  uninstall quit: "com.aymen.monnect"

  zap trash: [
    "~/Library/Application Support/Monnect",
    "~/Library/HTTPStorages/com.aymen.monnect",
    "~/Library/Logs/Monnect.1.log",
    "~/Library/Logs/Monnect.log",
    "~/Library/Preferences/com.aymen.monnect.plist",
  ]

  caveats <<~EOS
    Open Monnect on both Macs; setup runs in the app.
    Upgrading from 0.1: install this version on both Macs.
  EOS
end
