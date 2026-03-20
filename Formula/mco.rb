class Mco < Formula
 include Language::Python::Virtualenv

 desc "Orchestrate AI coding agents. Any prompt. Any agent. Any IDE."
 homepage "https://github.com/mco-org/mco"
 url "https://github.com/mco-org/mco/archive/refs/tags/v0.9.1.tar.gz"
 version "0.9.1"
 sha256 "8d88587691925d5d22d41d345bb039b6ff382e63a27ca06a7c1a825fdf3a079c"
 license "MIT"

 depends_on "python@3.12"

 def install
   virtualenv_install_with_resources
 end

 test do
   assert_match "MCO", shell_output("#{bin}/mco --help")
   assert_match "doctor", shell_output("#{bin}/mco doctor")
 end
end
