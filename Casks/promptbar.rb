cask "promptbar" do
  version "1.0.3"
  sha256 "15a303c9c56ab349b078004d84d38a47b7fe0d2637d7985da298c738a4187498"

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
