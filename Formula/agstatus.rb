class Agstatus < Formula
  desc "Live status board + push alerts for your coding agents (Claude Code, Codex)"
  homepage "https://agstatus.online"
  url "https://registry.npmjs.org/agstatus/-/agstatus-1.3.0.tgz"
  sha256 "30941eca5b728657ee219d9007ff9dcf875f5e16192dbda7dbd762c771a0d084"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "status board", shell_output("#{bin}/agstatus help")
  end
end
