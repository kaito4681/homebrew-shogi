cask "shogihome" do
  homepage "https://github.com/sunfish-shogi/shogihome"
  name "ShogiHome"
  version "1.24.0"
  sha256 :no_check
  url "https://github.com/sunfish-shogi/shogihome/releases/download/v1.24.0/release-v1.24.0-mac.zip"

  container nested: "ShogiHome-1.24.0-universal.dmg"

  app "ShogiHome.app"

  postflight do
    #「開発元が未確認のため開けません」というダイアログを抑制
    system_command "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{staged_path}/ShogiHome.app"], sudo: true
  end
end