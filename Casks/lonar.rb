cask "lonar" do
  version "1.2.1"
  sha256 "fed74cffd6ea9e902943d21c7325778e18b681493ee4369a7b4b67415451fe82"

  url "https://github.com/Eimen2018/lonar/releases/download/v#{version}/Lonar-#{version}.dmg"
  name "Lonar"
  desc "Sync external monitor brightness with the built-in display"
  homepage "https://github.com/Eimen2018/lonar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Lonar.app"

  zap trash: [
    "~/Library/Preferences/com.aymen.lonar.plist",
    "~/Library/Caches/com.aymen.lonar",
    "~/Library/HTTPStorages/com.aymen.lonar",
  ]
end
