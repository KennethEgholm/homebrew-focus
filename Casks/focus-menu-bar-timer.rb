cask "focus-menu-bar-timer" do
  version "1.2"
  sha256 "aec3491025ba8348f3cd87d18742c31ecdb862d283c653e1430f4729ed5453fb"

  url "https://github.com/KennethEgholm/focus-app/releases/download/v#{version}/Focus-#{version}.zip"
  name "Focus – Menu Bar Timer"
  desc "Calm menu bar focus timer with Do Not Disturb and calendar integration"
  homepage "https://kennethegholm.github.io/focus-app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "Focus.app"

  zap trash: "~/Library/Containers/com.dkkenegh.Focus"
end
