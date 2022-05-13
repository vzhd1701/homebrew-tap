class Testmupdf < Formula
  include Language::Python::Virtualenv

  desc "Test PyMuPDF"
  homepage "https://github.com/vzhd1701/testmupdf"
  url "https://github.com/vzhd1701/testmupdf/releases/download/v0.1.1/testmupdf-0.1.1.tar.gz"
  sha256 "17517e2d3c260a1320bbbb0959d5a5d604f73f5c56bc689af1fc93cabeaba9d3"
  license "MIT"

  depends_on "freetype" => :build
  depends_on "mupdf" => :build
  depends_on "swig" => :build
  depends_on "python@3.10"

  resource "PyMuPDF" do
    url "https://files.pythonhosted.org/packages/9f/1d/032d24e0c774e67742395fda163a172c60e4d0f9875785d5199eb2956d5e/PyMuPDF-1.19.6.tar.gz"
    sha256 "ef3d13e27f1585d776f6a2597f113aabd28d36b648b983a72850b21c5399ab08"
  end

  def install
    if OS.linux?
      pymupdf_dirs = {
        include_dirs: [
          Formula["mupdf"].include/"mupdf",
          Formula["freetype2"].include/"freetype2",
        ],
        library_dirs: [lib],
      }
      (buildpath/"pymupdf_dirs.env").write(pymupdf_dirs.to_json)

      ENV["PYMUPDF_DIRS"] = File.expand_path("pymupdf_dirs.env")
    end

    virtualenv_install_with_resources
  end

  test do
    system bin/"testmupdf", "-o", "test.png", test_fixtures("test.pdf")

    actual_sum = Digest::SHA256.hexdigest(File.read("test.png"))
    expected_sum = "38491c129ba8edf21a99896eae6bd5a7ff06df5f135f18601d28199f2b21ed27"
    assert_equal expected_sum, actual_sum
  end
end
