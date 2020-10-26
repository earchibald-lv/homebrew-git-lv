# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitLv < Formula
  desc ""
  homepage ""
  url "https://vcs.build.livevox.net/earchibald/git-lv.git", :tag => "0.3.0"
  sha256 ""
  license ""

  # depends_on "cmake" => :build

  def install
    prefix.install Dir["./*"]
    bin.write_exec_script libexec/"git-lv"

    resource("completion").stage do
      bash_completion.install "git-lv-completion.bash"
    end

    #mkdir_p "#{prefix}/bin"
    #bin.install "git-lv"
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
#    system "./configure", "--disable-debug",
#                          "--disable-dependency-tracking",
#                          "--disable-silent-rules",
#                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test git-lv`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
