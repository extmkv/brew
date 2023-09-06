class Kicklink < Formula  
    desc "Fast delivery of links/deeplinks to your favorite mobile platforms"
    homepage "https://github.com/extmkv/kicklink"
    url "https://github.com/extmkv/kicklink/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "6225473cbeec9baa3e591b6bbb85c5d6f0cc6109ce2f761c5fe2ba4d78f91873"
    license "Apache-2.0"

    def install
        bin.install "kicklink.sh" => "kicklink"
      end
    
    test do
        assert_match "Usage:", shell_output("#{bin}/kicklink -h", 2)
    end 
end
