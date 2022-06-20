class Testmupdf < Formula
  include Language::Python::Virtualenv

  desc "Test PyMuPDF"
  homepage "https://github.com/vzhd1701/testmupdf"
  url "https://github.com/vzhd1701/testmupdf/releases/download/v0.1.1/testmupdf-0.1.1.tar.gz"
  sha256 "17517e2d3c260a1320bbbb0959d5a5d604f73f5c56bc689af1fc93cabeaba9d3"
  license "MIT"

  depends_on "freetype" => :build
  depends_on "swig" => :build
  depends_on "mupdf"
  depends_on "python@3.10"

  on_linux do
    depends_on "harfbuzz" => :build
    depends_on "mujs"
    depends_on "openjpeg"
    depends_on "gumbo-parser"
    depends_on "jbig2dec"
  end

  resource "PyMuPDF" do
    url "https://files.pythonhosted.org/packages/19/2d/73cb79152442ace5a6f55de17755e7c4c0dbed5ac6180baa1767d6a0e279/PyMuPDF-1.20.0.tar.gz"
    sha256 "443675ed28dc9be5c9521e17ff9a20299a78b8b94f4c457d7b7aa81899c00ee7"
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

    ENV["PYMUPDF_SETUP_MUPDF_BUILD"] = ""

    venv = virtualenv_create(libexec, "python3")

    resource("PyMuPDF").stage do
      system libexec/"bin/python3", *Language::Python.setup_install_args(libexec), "build"
    end

    venv.pip_install resources.reject { |r| r.name == "PyMuPDF" }
    venv.pip_install_and_link buildpath
  end

  test do
    system bin/"testmupdf", "-o", "test.png", test_fixtures("test.pdf")

    actual_sum = Digest::SHA256.hexdigest(File.read("test.png"))
    expected_sum = "38491c129ba8edf21a99896eae6bd5a7ff06df5f135f18601d28199f2b21ed27"
    assert_equal expected_sum, actual_sum
  end
end
