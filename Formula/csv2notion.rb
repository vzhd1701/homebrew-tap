class Csv2notion < Formula
  include Language::Python::Virtualenv

  desc "Import/Merge CSV files into Notion database"
  homepage "https://github.com/vzhd1701/csv2notion"
  url "https://files.pythonhosted.org/packages/3f/dd/d42741e997da64c6987b60ef07ed4299f1e2f16853b2b7e5a2963e212950/csv2notion-0.2.0.tar.gz"
  sha256 "d971df6326c90a44787a56b5037a1320cb1905eb80b6e9268b8837c95de5afb1"
  license "MIT"

  bottle do
    root_url "https://github.com/vzhd1701/homebrew-tap/releases/download/csv2notion-0.2.0"
    sha256 cellar: :any_skip_relocation, monterey:     "7238cce07afaaf3358bd9854e10ddba4bf4f4862c7ded17dff5bd9f55bc30f23"
    sha256 cellar: :any_skip_relocation, big_sur:      "6d24c544235b7195694ebbb114f1f7a1f8d90c85b800ddeb57b5d7010a2b5b24"
    sha256 cellar: :any_skip_relocation, catalina:     "14187375a71dfe49cdd8a324dd6da327ce597c0c548c38e3644f1f7ffec02a71"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cdec7193c570cf2a58b8b920b4ed817da3f1d6911d2fb8545ee4d4e4e53a3cb1"
  end

  depends_on "python@3.10"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/e8/b0/cd2b968000577ec5ce6c741a54d846dfa402372369b8b6861720aa9ecea7/beautifulsoup4-4.11.1.tar.gz"
    sha256 "ad9aa55b65ef2808eb405f46cf74df7fcb7044d5cbc26487f96eb2ef2e436693"
  end

  resource "bs4" do
    url "https://files.pythonhosted.org/packages/10/ed/7e8b97591f6f456174139ec089c769f89a94a1a4025fe967691de971f314/bs4-0.0.1.tar.gz"
    sha256 "36ecea1fd7cc5c0c6e4a1ff075df26d50da647b75376626cc186e2212886dd3a"
  end

  resource "cached-property" do
    url "https://files.pythonhosted.org/packages/61/2c/d21c1c23c2895c091fa7a91a54b6872098fea913526932d21902088a7c41/cached-property-1.5.2.tar.gz"
    sha256 "9fa5755838eecbb2d234c3aa390bd80fbd3ac6b6869109bfc1b499f7bd89a130"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/07/10/75277f313d13a2b74fc56e29239d5c840c2bf09f17bf25c02b35558812c6/certifi-2022.5.18.1.tar.gz"
    sha256 "9c5705e395cd70084351dd8ad5c41e65655e08ce46f2ec9cf6c2c08390f71eb7"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/56/31/7bcaf657fafb3c6db8c787a865434290b726653c912085fbd371e9b92e1c/charset-normalizer-2.0.12.tar.gz"
    sha256 "2857e29ff0d34db842cd7ca3230549d1a697f96ee6d3fb071cfa6c7393832597"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "dictdiffer" do
    url "https://files.pythonhosted.org/packages/61/7b/35cbccb7effc5d7e40f4c55e2b79399e1853041997fcda15c9ff160abba0/dictdiffer-0.9.0.tar.gz"
    sha256 "17bacf5fbfe613ccf1b6d512bd766e6b21fb798822a133aa86098b8ac9997578"
  end

  resource "emoji" do
    url "https://files.pythonhosted.org/packages/68/8a/b08dd0b946f0843cba782e3784cd979c33f144e5e7c37fb0162dc47acd43/emoji-1.7.0.tar.gz"
    sha256 "65c54533ea3c78f30d0729288998715f418d7467de89ec258a31c0ce8660a1d1"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "notion-vzhd1701-fork" do
    url "https://files.pythonhosted.org/packages/fb/08/ecef29696b86725c51b765043567b8875af3ea6297e5444ec72a205c2671/notion-vzhd1701-fork-0.0.33.tar.gz"
    sha256 "e1762688259bd010752bceda29dfdc15ae25cc7346eb0ddabd86208e36dfbc3e"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "python-slugify" do
    url "https://files.pythonhosted.org/packages/5d/45/915967d7bcc28fd12f36f554e1a64aeca36214f2be9caf87158168b5a575/python-slugify-6.1.2.tar.gz"
    sha256 "272d106cb31ab99b3496ba085e3fea0e9e76dcde967b5e9992500d1f785ce4e1"
  end

  resource "pytz-deprecation-shim" do
    url "https://files.pythonhosted.org/packages/94/f0/909f94fea74759654390a3e1a9e4e185b6cd9aa810e533e3586f39da3097/pytz_deprecation_shim-0.1.0.post0.tar.gz"
    sha256 "af097bae1b616dde5c5744441e2ddc69e74dfdcb0c263129610d85b87445a59d"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz"
    sha256 "68d7c56fd5a8999887728ef304a6d12edc7be74f1cfa47714fc8b414525c9a61"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/f3/03/bac179d539362319b4779a00764e95f7542f4920084163db6b0fd4742d38/soupsieve-2.3.2.post1.tar.gz"
    sha256 "fc53893b3da2c33de295667a0e19f078c14bf86544af307354de5fcf12a3f30d"
  end

  resource "text-unidecode" do
    url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
    sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/98/2a/838de32e09bd511cf69fe4ae13ffc748ac143449bfc24bb3fd172d53a84f/tqdm-4.64.0.tar.gz"
    sha256 "40be55d30e200777a307a7585aee69e4eabb46b4ec6a4b4a5f2d9f11e7d5408d"
  end

  resource "types-emoji" do
    url "https://files.pythonhosted.org/packages/00/4d/3966fd0c7f4a8b24f9fdb7502115ec17b39c47b66131e3f9f1f0385deea1/types-emoji-1.7.0.tar.gz"
    sha256 "bfdf677bed34537117a7d43687b09a01b808e4d838872f7628c6dc4d8a64131e"
  end

  resource "types-python-dateutil" do
    url "https://files.pythonhosted.org/packages/28/cd/2f094758ff9ee4ad820fc20b37e89908c0ff9fd541d066c1afa5a47acf2e/types-python-dateutil-2.8.16.tar.gz"
    sha256 "3aaac4c138eb6b8ecbc2550996ec25d6e45b5d32887d1e693d0842ee2fa659d2"
  end

  resource "types-requests" do
    url "https://files.pythonhosted.org/packages/19/1f/42dbf39ff88c67c71485e27485b1c3965ad882dc3b76c256f2d45401ffa8/types-requests-2.27.27.tar.gz"
    sha256 "d618d9809fa32f514cf17cea8460814da671c56366fb1c908accca8bf183112b"
  end

  resource "types-urllib3" do
    url "https://files.pythonhosted.org/packages/86/75/396edf6735c6531b3e4d5ecb382ea644ad28a601f8262f92279cc092110b/types-urllib3-1.26.14.tar.gz"
    sha256 "2a2578e4b36341ccd240b00fccda9826988ff0589a44ba4a664bbd69ef348d27"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/df/c7/2d8ea31840794fb341bc2c2ea72bf1bd16bd778bd8c0d7c9e1e5f9df1de3/tzdata-2022.1.tar.gz"
    sha256 "8b536a8ec63dc0751342b3984193a3118f8fca2afe25752bb9b7fffd398552d3"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/7d/b9/164d5f510e0547ae92280d0ca4a90407a15625901afbb9f57a19d9acd9eb/tzlocal-4.2.tar.gz"
    sha256 "ee5842fa3a795f023514ac2d801c4a81d1743bbe642e3940143326b3a00addd7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/1b/a5/4eab74853625505725cefdf168f48661b2cd04e7843ab836f3f63abf81da/urllib3-1.26.9.tar.gz"
    sha256 "aabaf16477806a5e1dd19aa41f8c2b7950dd3c746362d7e3223dbe6de6ac448e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"test.csv").write <<~EOF
      a,b,c
      1,2,3
    EOF

    output = shell_output("#{bin}/csv2notion --token 123 test.csv 2>&1", 1)
    assert_match "Invalid Notion token", output

    assert_match version.to_s, shell_output("#{bin}/csv2notion --version")
  end
end
