cask "promptbar" do
  version "1.0.2"
  sha256 "64aaef2559ed2aabd124b8e6b2d647f17ddf810000aa303f5661904e7736a6b8"

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
