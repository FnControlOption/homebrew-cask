cask "crushftp" do
  version "10"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.crushftp.com/early#{version}/CrushFTP#{version}.zip",
      cookies: { "CrushAuth" => "1234567890123_1234567890ABCDEFGHIJKLMNOPQRST", "currentAuth" => "ABCD" }
  name "CrushFTP"
  desc "File transfer server"
  homepage "https://www.crushftp.com/index.html"

  livecheck do
    url "https://www.crushftp.com/download.html"
    regex(/href=.*?CrushFTP(\d+)\.zip/i)
  end

  suite "CrushFTP#{version}"

  caveats do
    depends_on_java
  end
end
