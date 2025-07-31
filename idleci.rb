class Idleci < Formula
  desc "Legends of Idleon Cheat Injector - TypeScript rewrite with web UI"
  homepage "https://github.com/suineg/IdleCI-brew"
  version "1.1.0-Legacy"

  if Hardware::CPU.arm?
    url "https://github.com/suineg/IdleCI-brew/releases/download/#{version}/IdleCI-macOS-arm64.zip"
    sha256 "PUT_ARM64_SHA256_HERE"
  else
    url "https://github.com/suineg/IdleCI-brew/releases/download/#{version}/IdleCI-macOS-x64.zip"
    sha256 "PUT_X64_SHA256_HERE"
  end

  depends_on :macos

  def install
    if Hardware::CPU.arm?
      bin.install "IdleCI-macos-arm64" => "idleci"
    else
      bin.install "IdleCI-macos-x64" => "idleci"
    end
    
    # Install support files
    pkgshare.install "cheats.js"
    pkgshare.install "config.custom.example.js"
  end

  def caveats
    <<~EOS
      IdleCI has been installed to #{bin}/idleci

      To get started:
      1. Start Legends of Idleon (Steam version)
      2. Run: idleci
      3. Access the web UI at http://localhost:8080
      4. Copy #{pkgshare}/config.custom.example.js to customize settings

      For debug mode: idleci -d
      For custom config: idleci -c /path/to/config.js

      WARNING: This tool is for educational purposes only.
      Use at your own risk. The authors are not responsible for any bans,
      data loss, or other consequences resulting from use of this software.
    EOS
  end

  test do
    # Test that the binary exists and can show help
    assert_match "IdleCI", shell_output("#{bin}/idleci --help", 1)
  end
end 