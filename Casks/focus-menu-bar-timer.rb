cask "focus-menu-bar-timer" do
  version "1.1"
  sha256 "ced7b57988ba6007445d384a72530dbb6f7635a6b3ce78faed53f242377bb69f"

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
