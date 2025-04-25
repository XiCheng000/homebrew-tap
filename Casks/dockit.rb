cask "dockit" do
  version "v0.0.3"
  sha256 "ea279f789a9c218f82e7f0aee8ebd4cb8ad3b70ae0c8992b3fcb4ced35bd83a7"

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
