cask "shogihome" do
  homepage "https://github.com/sunfish-shogi/shogihome"
  name "ShogiHome"
  version "null"
  sha256 :no_check
  url "https://github.com/sunfish-shogi/shogihome/releases/download/vnull/release-vnull-mac.zip"

  container nested: "ShogiHome-null-universal.dmg"

  app "ShogiHome.app"

  postflight do
    #「開発元が未確認のため開けません」というダイアログを抑制
    system_command "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{staged_path}/ShogiHome.app"], sudo: true
  end
end