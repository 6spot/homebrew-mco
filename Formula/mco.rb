class Mco < Formula
 include Language::Python::Virtualenv

 desc "Orchestrate AI coding agents. Any prompt. Any agent. Any IDE."
 homepage "https://github.com/6spot/mco"
 head "https://github.com/6spot/mco.git", branch: "main"
 license "MIT"

 # Python 版本要求 >= 3.10，Homebrew 默认用最新的就行
 depends_on "python@3.12"

 def install
   virtualenv_install_with_resources
 end

 test do
   # 简单测试命令是否存在和 --help 能跑
   assert_match "MCO", shell_output("#{bin}/mco --help")
 end
end
