cask "dockit" do
  version "v0.0.3"
  sha256 "895b0a0ca94a82b779890b72e8d1a5134c5393c418732e90f7d092a6110a09de"

  url "https://github.com/XiCheng148/Dockit/releases/download/#{version}/Dockit.dmg"
  name "Dockit"
  homepage "https://github.com/XiCheng148/Dockit"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Dockit.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/Dockit.app"],
                   sudo: false
  end

  caveats <<~EOS
    Dockit is currently unsigned. You'll need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app
  EOS

  zap trash: [
    "~/Library/Application Support/Dockit",
    "~/Library/Preferences/top.XiCheng148.Dockit.plist",
    "~/Library/Caches/top.XiCheng148.Dockit"
  ]
end
