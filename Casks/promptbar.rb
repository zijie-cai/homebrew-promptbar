cask "promptbar" do
  version "1.0.7"
  sha256 "8876570b07b1e64fd1769c164fadf5be2391c4d6afe6c931e8ecfe9cb79f79a7"

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
