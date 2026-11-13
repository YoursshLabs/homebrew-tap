cask "yourssh" do
  version "0.4.1"
  sha256 "5b9ca1fc149b32373fe006872ef77c5e5ef5b262afbbb9d11ff7c7515578bfbd"

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
