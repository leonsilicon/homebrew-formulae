class SetappCli < Formula
  desc "CLI for Setapp"
  homepage "https://github.com/leonsilicon/setapp-cli"
  url "https://registry.npmjs.org/setapp-cli/-/setapp-cli-latest.tgz"
  version "latest"
  sha256 :no_check
  license "MIT"

  depends_on "bun"

  def install
    system "bun", "install", "--global", "setapp-cli"

    # Create a wrapper script
    (bin/"setapp").write <<~EOS
      #!/bin/sh
      exec bun x setapp "$@"
    EOS
  end

  test do
    system bin/"setapp", "--version"
  end
end