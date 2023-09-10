class Synk < Formula  
    desc "Synk a local file to your mobile devices (via adb & xcrun)"
    homepage "https://github.com/extmkv/synk"
    url "https://github.com/extmkv/synk/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "0766258d8794676910d0b4cef8a86bf833d198f08df8ab287e85ed07cc1a12f3"
    license "Apache-2.0"
    depends_on "fswatch"

    def install
        bin.install "synk.sh" => "synk"
      end
    
    test do
        assert_match "Usage:", shell_output("#{bin}/synk -h", 2)
    end 
end
