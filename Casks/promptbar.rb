cask "promptbar" do
  version "1.0.1"
  sha256 "bec9cc6c8569a8e7934314c93c5c23825c7e37f49f30a206d00d548057c3d76d"

  url "https://github.com/zijie-cai/PromptBar/releases/download/v#{version}/PromptBar-#{version}.zip"
  name "PromptBar"
  desc "macOS menu bar app for saving, searching, and reusing AI prompts"
  homepage "https://github.com/zijie-cai/PromptBar"

  depends_on macos: ">= :sonoma"

  app "PromptBar.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/PromptBar.app"]
  end
end
