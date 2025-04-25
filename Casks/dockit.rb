cask "dockit" do
  version "0.0.2"
  sha256 "7d5921e1307874386a8dd94a36e2581f258fe26711aa3cc46b2bd0ee2180b504"

  url "https://github.com/XiCheng000/Dockit/releases/download/v#{version}/Dockit.dmg"
  name "Dockit"
  homepage "https://github.com/XiCheng000/Dockit"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Dockit.app"

  caveats <<~EOS
    Dockit is currently unsigned. You'll need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app
  EOS

  zap trash: [
    "~/Library/Application Support/Dockit",
    "~/Library/Preferences/top.XiCheng000.Dockit.plist",
    "~/Library/Caches/top.XiCheng000.Dockit"
  ]
end
