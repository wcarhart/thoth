class Thoth < Formula
	desc "Helpful English diction tools for the command line"
	homepage "https://github.com/wcarhart/thoth"
	url ""
	sha256 ""

	bottle = :unneeded

	def install
		bin.install "thoth"
		bin.install ""
	end

	test do
		system "#{bin}/thoth", "help"
	end
end