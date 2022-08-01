class Csv2notion < Formula
  include Language::Python::Virtualenv

  desc "Import/Merge CSV files into Notion database"
  homepage "https://github.com/vzhd1701/csv2notion"
  url "https://files.pythonhosted.org/packages/7e/79/acf3cca3035f7611f1b673dfe1319f2472cb015980797df5eae9975a3dee/csv2notion-0.3.4.tar.gz"
  sha256 "9e1f674c46bf2beedc80c9d9ba70b53d92aec6d69a8645eaa834541bfaecf7b7"
  license "MIT"

  bottle do
    root_url "https://github.com/vzhd1701/homebrew-tap/releases/download/csv2notion-0.3.4"
    sha256 cellar: :any_skip_relocation, monterey: "04beb7739400293453ba9f6f5e9785e325caff998bd7e2feb8629ca82fbd66ae"
    sha256 cellar: :any_skip_relocation, big_sur:  "72fe3e77ac82b334bc4f553491043976ace1edec9b983728e1a19b0bdccd9ee4"
    sha256 cellar: :any_skip_relocation, catalina: "a71e26ecd2d8060004a2ca61ca4fd1872813ee4f4961813aade91a711260e4dd"
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
    url "https://files.pythonhosted.org/packages/cc/85/319a8a684e8ac6d87a1193090e06b6bbb302717496380e225ee10487c888/certifi-2022.6.15.tar.gz"
    sha256 "84c85a9078b11105f04f3036a9482ae10e4621616db313fe045dd24743a0820d"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/93/1d/d9392056df6670ae2a29fcb04cfa5cee9f6fbde7311a1bb511d4115e9b7a/charset-normalizer-2.1.0.tar.gz"
    sha256 "575e708016ff3a5e3681541cb9d79312c416835686d054a23accb873b254f413"
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
    url "https://files.pythonhosted.org/packages/85/f3/0a09c327f81c792707727125e0b43e4eb6b1397f77d44162a8a5115260c0/emoji-2.0.0.tar.gz"
    sha256 "297fac7ec9e86f7b602792c28eb6f04819ba67ab88a34c56afcde52243a9a105"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "notion-vzhd1701-fork" do
    url "https://files.pythonhosted.org/packages/8b/4a/ac1cfe7609b36fd5bc50f72e07c320368fbbef9dbc1f899375322c383198/notion-vzhd1701-fork-0.0.35.tar.gz"
    sha256 "0879bed98e4bb7f3765d6099a5d39704d34243b36105a0fbb513dcbf0fa0a5d5"
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

  resource "ratelimit" do
    url "https://files.pythonhosted.org/packages/ab/38/ff60c8fc9e002d50d48822cc5095deb8ebbc5f91a6b8fdd9731c87a147c9/ratelimit-2.2.1.tar.gz"
    sha256 "af8a9b64b821529aca09ebaf6d8d279100d766f19e90b5059ac6a718ca6dee42"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
    sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
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
    url "https://files.pythonhosted.org/packages/15/4f/98cece0d20480586b225a515b6c83dd0e16b1b0502aa7fa89b67f86860e9/types-emoji-1.7.4.tar.gz"
    sha256 "1e1341399ed1dd10a54d348ec7bb0708a56cd04f79702941fef5db60d276ea46"
  end

  resource "types-python-dateutil" do
    url "https://files.pythonhosted.org/packages/0b/56/38212d626fb100026dbb79c050eb9ea24012ad562f8fd1991d25453da3d4/types-python-dateutil-2.8.19.tar.gz"
    sha256 "bfd3eb39c7253aea4ba23b10f69b017d30b013662bb4be4ab48b20bbd763f309"
  end

  resource "types-requests" do
    url "https://files.pythonhosted.org/packages/68/09/4241bef81461b4a283e723ca39f580ff4a0cfbec434a4b07570822d14cc8/types-requests-2.28.6.tar.gz"
    sha256 "cf3383bbd79394bf051a0a9202d6831fa962f186f923c178f7c059e3424bd00e"
  end

  resource "types-urllib3" do
    url "https://files.pythonhosted.org/packages/0d/97/4b60d05e19f673f7addc87ce72a61a530faf491d6011048f3e8a46545c01/types-urllib3-1.26.20.tar.gz"
    sha256 "1fb6e2af519a7216a19dd6be8cd2ee787b402a754ccb4a13ca1c0e5b202aea5a"
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
    url "https://files.pythonhosted.org/packages/6d/d5/e8258b334c9eb8eb78e31be92ea0d5da83ddd9385dc967dd92737604d239/urllib3-1.26.11.tar.gz"
    sha256 "ea6e8fb210b19d950fab93b60c9009226c63a28808bc8386e05301e25883ac0a"
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
