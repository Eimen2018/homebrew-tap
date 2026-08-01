cask "lonar" do
  version "1.2.3"
  sha256 "232a0ac7410660d90ad2e300b0cd75024c5fc55e129d815b17f2b1ec563a2de2"

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
