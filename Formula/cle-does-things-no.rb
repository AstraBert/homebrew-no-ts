require "language/node"

class CleDoesThingsNo < Formula
  desc "The 'no' command is the same as the 'yes' command, but it prints 'n'"
  homepage "https://github.com/AstraBert/no-ts#readme"
  url "https://registry.npmjs.org/@cle-does-things/no/-/no-0.2.1.tgz"
  sha256 "36c05caff5452e64d7e11a81145e62321d8c046f43e4010026dfdb93efea8441"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
