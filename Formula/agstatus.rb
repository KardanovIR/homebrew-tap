class Agstatus < Formula
  desc "Live status board + push alerts for your coding agents (Claude Code, Codex)"
  homepage "https://agstatus.online"
  url "https://registry.npmjs.org/agstatus/-/agstatus-1.2.0.tgz"
  sha256 "71bb8d2fcce909d3568147503f4a4e7f4118978adb66fdd1f5e58d36d261ae70"
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
