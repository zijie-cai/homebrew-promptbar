cask "promptbar" do
  version "1.0.3"
  sha256 "1512e5f9a07c2a9389bfaf6d425c2ef2a6ed34de91440c6ee18afc46f68114e6"

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
