# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitLv < Formula
  desc ""
  homepage ""
  url "https://vcs.build.livevox.net/earchibald/git-lv.git", :tag => "0.5.0"
  sha256 ""
  license ""

  depends_on "git"
  depends_on "git-flow"
  depends_on "awsume"
  depends_on "pre-commit"
  depends_on "checkov"
  depends_on "terraform-docs"
  depends_on "tflint"
  depends_on "tfsec"
  depends_on "shellcheck"
  depends_on "shfmt"

  def install
    prefix.install Dir["./*"]
    bin.write_exec_script libexec/"git-lv"

    bash_completion.install "#{prefix}/git-lv-completion.bash"
    system "awsume-configure", "--shell", "bash", "--autocomplete-file", "/usr/local/etc/bash_completion.d/awsume-completion.bash"
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
