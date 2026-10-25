cask "blotch" do
  version "1.0.0"
  sha256 "210ffacc7bd82a2c9fe82870c219d4f9eec7cc7362107659006162a3791682bf"

  url "https://github.com/aebyra/blotch/releases/download/v#{version}/Blotch-#{version}.dmg"
  name "Blotch"
  desc "Puts the MacBook notch to work: status glow, drop actions, coding agents, CLI"
  homepage "https://github.com/aebyra/blotch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Blotch.app"
  binary "#{appdir}/Blotch.app/Contents/MacOS/blotch"

  uninstall quit: "com.aebyra.blotch"

  zap trash: [
    "~/Library/Application Support/Blotch",
    "~/Library/Caches/com.aebyra.blotch",
    "~/Library/HTTPStorages/com.aebyra.blotch",
    "~/Library/Logs/Blotch",
    "~/Library/Preferences/com.aebyra.blotch.plist",
  ]

  caveats <<~EOS
    If you connected Claude Code, Codex or the zsh hook, run this before uninstalling
    so nothing keeps calling a missing `blotch`:
      blotch uninstall
  EOS
end
