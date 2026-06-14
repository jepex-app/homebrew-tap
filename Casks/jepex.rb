cask "jepex" do
  version "1.4.0"
  sha256 "48605e680ad03e550c78ffd57b5b55c034fafa5c015dbc3729261686642237eb"

  url "https://downloads.jepex.app/macos/jepex-#{version}.dmg"
  name "jepex"
  desc "Photo editor and library for straight-out-of-camera JPEG shooters"
  homepage "https://jepex.app"

  livecheck do
    url "https://downloads.jepex.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "jepex.app"

  zap trash: [
    "~/Library/Application Support/jepex",
    "~/Library/Caches/dev.karto.jepex",
    "~/Library/HTTPStorages/dev.karto.jepex",
    "~/Library/Preferences/dev.karto.jepex.plist",
    "~/Library/Saved Application State/dev.karto.jepex.savedState",
  ]
end
