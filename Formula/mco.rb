  mkdir -p ~/Library/Homebrew/Formula
  cat > ~/Library/Homebrew/Formula/mco.rb << 'EOF'
  class Mco < Formula
    desc "Multi-CLI Orchestrator - Python 多代理 CLI 编排工具"
    homepage "https://github.com/mco-org/mco"
    head "https://github.com/6spot/mco.git", branch: "main"

    depends_on "python@3.12"

    def install
      venv = virtualenv_create(libexec, "python3")
      venv.pip_install_and_link buildpath
    end

    test do
      system bin/"mco", "--help"  # 如果项目没有 --help，可改成其他命令测试
    end
  end
  EOF
