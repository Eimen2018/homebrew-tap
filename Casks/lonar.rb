cask "lonar" do
  version "1.2.2"
  sha256 "9f93c3dd2d8f845e19268dce3376fc5c9d10acf3711fd2bc3f4e93926bf90257"

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
