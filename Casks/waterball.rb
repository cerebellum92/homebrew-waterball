cask "waterball" do
  version "0.1.12"
  sha256 "13b39c67958623196a0103b6bd5cb4210baec07d8cd7b8b127bb2398fdd679a2"

  url "https://github.com/cerebellum92/waterball/releases/download/v#{version}/Waterball_v#{version}_macOS.dmg",
      verified: "github.com/cerebellum92/waterball/"
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
