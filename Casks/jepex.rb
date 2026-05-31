cask "jepex" do
  version "1.0.0"
  sha256 "2f99e011788b178e42e1f527141900ebb07859e999abf1793f5f391bf34f13c3"

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
