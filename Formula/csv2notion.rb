class Csv2notion < Formula
  include Language::Python::Virtualenv

  desc "Import/Merge CSV files into Notion database"
  homepage "https://github.com/vzhd1701/csv2notion"
  url "https://files.pythonhosted.org/packages/0e/2d/c863d49cd0f7a325306c54476195b18510c7a03d93ff1f207183f758ce3a/csv2notion-0.3.6.tar.gz"
  sha256 "2f212b74c3d294906fe29945f0bc728609f1a95ccaa1c838d55a1991a5b98bf5"
  license "MIT"

  bottle do
    root_url "https://github.com/vzhd1701/homebrew-tap/releases/download/csv2notion-0.3.6"
    sha256 cellar: :any_skip_relocation, monterey: "d9f59f165e0a14edbe6836fc50c173c2c55b1e535d7b6ab2fcde6a1d9fa52e09"
    sha256 cellar: :any_skip_relocation, big_sur:  "4657401dba15d309f1f530b22a3c7b363f2052b0fe2a7668baf1aca074b9bc97"
    sha256 cellar: :any_skip_relocation, catalina: "3cd9e2732968b1c4c3112aee79f51521673df663365c3623609ae5436208e8b6"
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
    url "https://files.pythonhosted.org/packages/cb/a4/7de7cd59e429bd0ee6521ba58a75adaec136d32f91a761b28a11d8088d44/certifi-2022.9.24.tar.gz"
    sha256 "0d9c601124e5a6ba9712dbc60d9c53c21e34f5f641fe83002317394311bdce14"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
    sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
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
    url "https://files.pythonhosted.org/packages/56/3c/26aefc6bbfa015e1dabbabd6881103e236c7ae67fabb3265fef0c85e89b5/emoji-2.2.0.tar.gz"
    sha256 "a2986c21e4aba6b9870df40ef487a17be863cb7778dcf1c01e25917b7cd210bb"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
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
    url "https://files.pythonhosted.org/packages/c1/c2/d8a40e5363fb01806870e444fc1d066282743292ff32a9da54af51ce36a2/tqdm-4.64.1.tar.gz"
    sha256 "5f4f682a004951c1b450bc753c710e9280c5746ce6ffedee253ddbcbf54cf1e4"
  end

  resource "types-emoji" do
    url "https://files.pythonhosted.org/packages/15/4f/98cece0d20480586b225a515b6c83dd0e16b1b0502aa7fa89b67f86860e9/types-emoji-1.7.4.tar.gz"
    sha256 "1e1341399ed1dd10a54d348ec7bb0708a56cd04f79702941fef5db60d276ea46"
  end

  resource "types-python-dateutil" do
    url "https://files.pythonhosted.org/packages/03/d8/25283ad81a48d73bbd1d1fd0a0ee6106e6cdd2dda8534c062967e57c2e8b/types-python-dateutil-2.8.19.3.tar.gz"
    sha256 "a313284df5ed3fd078303262edc0efde28998cd08e5061ef1ccc0bb5fef4d2da"
  end

  resource "types-requests" do
    url "https://files.pythonhosted.org/packages/57/12/b58964f89f921b2e8a2841b21ffac2e95ba4c2ed7c9323eeb843a8dab638/types-requests-2.28.11.4.tar.gz"
    sha256 "d4f342b0df432262e9e326d17638eeae96a5881e78e7a6aae46d33870d73952e"
  end

  resource "types-urllib3" do
    url "https://files.pythonhosted.org/packages/87/5b/af9b4438bf286cc539b01a2bc8bc88156349b7cade8e97faf80054af8cba/types-urllib3-1.26.25.3.tar.gz"
    sha256 "1807b87b8ee1ae0226813ba2c52330eff20fb2bf6359b1de24df08eb3090e442"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/5e/9f/63f7187ffd6d01dd5b5255b8c0b1c4f05ecfe79d940e0a243a6198071832/tzdata-2022.6.tar.gz"
    sha256 "91f11db4503385928c15598c98573e3af07e7229181bee5375bd30f1695ddcae"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/7d/b9/164d5f510e0547ae92280d0ca4a90407a15625901afbb9f57a19d9acd9eb/tzlocal-4.2.tar.gz"
    sha256 "ee5842fa3a795f023514ac2d801c4a81d1743bbe642e3940143326b3a00addd7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b2/56/d87d6d3c4121c0bcec116919350ca05dc3afd2eeb7dc88d07e8083f8ea94/urllib3-1.26.12.tar.gz"
    sha256 "3fa96cf423e6987997fc326ae8df396db2a8b7c667747d47ddd8ecba91f4a74e"
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
