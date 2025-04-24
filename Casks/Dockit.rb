cask "Dockit" do
  version "0.0.1"
  sha256 "524ae01049493c2184da83ad9ecb6243052661b20b6a9a7443fa4f2879a12b6e"

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
