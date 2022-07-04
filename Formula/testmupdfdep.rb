class Testmupdfdep < Formula
  include Language::Python::Virtualenv

  desc "Test PyMuPDF"
  homepage "https://github.com/vzhd1701/testmupdf"
  url "https://github.com/vzhd1701/testmupdf/releases/download/v0.1.1/testmupdf-0.1.1.tar.gz"
  sha256 "17517e2d3c260a1320bbbb0959d5a5d604f73f5c56bc689af1fc93cabeaba9d3"
  license "MIT"

  depends_on "python@3.10"
  depends_on "vzhd1701/tap/pymupdf"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"testmupdf", "-o", "test.png", test_fixtures("test.pdf")

    actual_sum = Digest::SHA256.hexdigest(File.read("test.png"))
    expected_sum = "38491c129ba8edf21a99896eae6bd5a7ff06df5f135f18601d28199f2b21ed27"
    assert_equal expected_sum, actual_sum
  end
end
