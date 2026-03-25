cask "promptbar" do
  version "1.0.5"
  sha256 "d365e48679ef383f477a33a4004e4c9909a56ed689d77ac2e1f866b356d342de"

  url "https://github.com/zijie-cai/PromptBar/releases/download/v#{version}/PromptBar.zip"
  name "PromptBar"
  desc "macOS menu bar app for saving, searching, and reusing AI prompts"
  homepage "https://github.com/zijie-cai/PromptBar"

  depends_on macos: ">= :sonoma"

  app "PromptBar.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/PromptBar.app"]
  end
end
