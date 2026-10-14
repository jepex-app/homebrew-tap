cask "jepex" do
  version "1.13.1"
  sha256 "4e9217c3e319ff23c211cf4d6d7c6cb461a0ce62d584884a2b974cd9e20c1542"

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
