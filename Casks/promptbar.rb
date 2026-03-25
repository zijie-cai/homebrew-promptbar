cask "promptbar" do
  version "1.0.0"
  sha256 "a4401729f1560ec0f70953c7eb05813697f849b5197324b5bc547eee0ee0a86e"

  url "https://github.com/zijie-cai/PromptBar/releases/download/v#{version}/PromptBar-#{version}.zip"
  name "PromptBar"
  desc "macOS menu bar app for saving, searching, and reusing AI prompts"
  homepage "https://github.com/zijie-cai/PromptBar"

  depends_on macos: ">= :sonoma"

  app "PromptBar.app"
end
