class Pymupdf < Formula
  desc "Python bindings for the PDF toolkit and renderer MuPDF"
  homepage "https://github.com/pymupdf/PyMuPDF"
  url "https://files.pythonhosted.org/packages/29/e4/d1d88146ef0b3b97d785acc7aed22b9774ac6bcf137e98b48a9c9bbb7f35/PyMuPDF-1.20.1.tar.gz"
  sha256 "305c1a64b8fb2fd465e27cc8bdcbf0f64224f0ec6d7763e3f5f2ca6783136649"
  license "AGPL-3.0-only"

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
      pymupdf_dirs = {
        include_dirs: [
          Formula["mupdf"].include/"mupdf",
          Formula["freetype2"].include/"freetype2",
        ],
        library_dirs: [lib],
      }
      (buildpath/"pymupdf_dirs.env").write(pymupdf_dirs.to_json)

      # https://github.com/pymupdf/PyMuPDF/blob/1.20.0/setup.py#L630
      ENV["PYMUPDF_DIRS"] = (buildpath/"pymupdf_dirs.env").to_s
    end

    # Makes setup skip build stage for mupdf
    # https://github.com/pymupdf/PyMuPDF/blob/1.20.0/setup.py#L447
    ENV["PYMUPDF_SETUP_MUPDF_BUILD"] = ""

    # Ensure `python` references use our python3
    ENV.prepend_path "PATH", Formula["python@3.10"].opt_bin

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
