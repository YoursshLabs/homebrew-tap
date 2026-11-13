cask "yourssh" do
  version "0.4.0"
  sha256 "7063f0f22842817b70fee6be09454ace43848ee72e51648d378617bbea9845c1"

  url "https://github.com/YoursshLabs/yourssh/releases/download/v#{version}/YourSSH-#{version}-macOS-universal.dmg"
  name "YourSSH"
  desc "SSH, SFTP, RDP and VNC client"
  homepage "https://yoursshlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "YourSSH.app"

  zap trash: [
    "~/.yourssh",
    "~/Library/Application Support/com.thangnm.yourssh",
    "~/Library/Application Support/YourSSH",
    "~/Library/Caches/com.thangnm.yourssh",
    "~/Library/Preferences/com.thangnm.yourssh.plist",
    "~/Library/Saved Application State/com.thangnm.yourssh.savedState",
  ]
end
