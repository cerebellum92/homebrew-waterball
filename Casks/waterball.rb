cask "waterball" do
  version "0.1.13"
  sha256 "e75de493c463b4d70a5985b6301cfd317dc4a3e35af8e71f522ae7f77435a8e1"

  url "https://github.com/cerebellum92/waterball/releases/download/v#{version}/Waterball_v#{version}_macOS.dmg"
  name "Waterball"
  desc "Cross-platform BBS terminal client with live chat and UAO support"
  homepage "https://github.com/cerebellum92/waterball"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Waterball.app"

  caveats <<~EOS
    Waterball is ad-hoc signed. If macOS Gatekeeper blocks first launch or upgrade, run:
      xattr -cr /Applications/Waterball.app
    Or open System Settings -> Privacy & Security -> Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/com.waterball.bbs",
    "~/Library/Caches/com.waterball.bbs",
    "~/Library/Preferences/com.waterball.bbs.plist",
  ]
end
