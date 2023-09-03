class Quicklink < Formula  
    desc "Fast delivery of links/deeplinks to your favorite mobile platforms"
    homepage "https://github.com/extmkv/quicklink"
    url "https://github.com/extmkv/quicklink/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "9c82845237af32fe471d6fd79e0da92b3cc140f11ba95724ce4991e9b112ef48"
    license "Apache-2.0"

    def install
        bin.install "quicklink.sh" => "quicklink"
      end
    
    test do
        assert_match "Usage:", shell_output("#{bin}/quicklink -h", 2)
    end 
end
