class Pymupdf < Formula
  desc "Python bindings for the PDF toolkit and renderer MuPDF"
  homepage "https://github.com/pymupdf/PyMuPDF"
  url "https://files.pythonhosted.org/packages/29/e4/d1d88146ef0b3b97d785acc7aed22b9774ac6bcf137e98b48a9c9bbb7f35/PyMuPDF-1.20.1.tar.gz"
  sha256 "305c1a64b8fb2fd465e27cc8bdcbf0f64224f0ec6d7763e3f5f2ca6783136649"
  license "AGPL-3.0-only"
  revision 1

  bottle do
    root_url "https://github.com/vzhd1701/homebrew-tap/releases/download/pymupdf-1.20.1"
    sha256 cellar: :any, monterey:     "4b8594420a33629d2d852051c6fda9da1af44596e1a9f3a4fbb3480032a1b0e4"
    sha256 cellar: :any, big_sur:      "a514670494ef21d945da941069aae0f64151f013851fd382b07c2d1964a5cf76"
    sha256 cellar: :any, catalina:     "364daaf6880ff399bf60c9b69a029c4605f9cc7e105566ad34f07cafd2a3bc4d"
    sha256               x86_64_linux: "8843e97a50fdfae8b5f20d4892dbc22b250fddbf411276ef47118deed29521b6"
  end

  depends_on "freetype" => :build
  depends_on "swig" => :build

  depends_on "mupdf"
  depends_on "python@3.10"

  on_linux do
    depends_on "mujs"
    depends_on "openjpeg"
    depends_on "gumbo-parser"
    depends_on "harfbuzz"
    depends_on "jbig2dec"
  end

  def install
    if OS.linux?
      ENV.append "CPATH", Formula["mupdf"].include/"mupdf", ":"
      ENV.append "CPATH", Formula["freetype2"].include/"freetype2", ":"
    end

    # Makes setup skip build stage for mupdf
    # https://github.com/pymupdf/PyMuPDF/blob/1.20.0/setup.py#L447
    ENV["PYMUPDF_SETUP_MUPDF_BUILD"] = ""

    system "python3", *Language::Python.setup_install_args(prefix),
                      "--install-lib=#{prefix/Language::Python.site_packages("python3")}",
                      "build"
  end

  test do
    (testpath/"test.py").write <<~EOS
      import sys
      from pathlib import Path

      import fitz

      in_pdf = sys.argv[1]
      out_png = sys.argv[2]

      # Convert first page to PNG
      pdf_doc = fitz.open(in_pdf)
      pdf_page = pdf_doc.load_page(0)
      png_bytes = pdf_page.get_pixmap().tobytes()

      Path(out_png).write_bytes(png_bytes)
    EOS

    in_pdf = test_fixtures("test.pdf")
    out_png = testpath/"test.png"

    system Formula["python@3.10"].opt_bin/"python3", testpath/"test.py", in_pdf, out_png
    assert_predicate out_png, :exist?
  end
end
