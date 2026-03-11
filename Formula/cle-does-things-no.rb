require "language/node"

class CleDoesThingsNo < Formula
  desc "The 'no' command is the same as the 'yes' command, but it prints 'n'"
  homepage "https://github.com/AstraBert/no-ts#readme"
  url "https://registry.npmjs.org/@cle-does-things/no/-/no-0.1.1.tgz"
  sha256 "f3ccad02ec5d2faa15a307cfd6ac419eb69e4d19ca8f4cb4cac30dd26aec4bdd"
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
