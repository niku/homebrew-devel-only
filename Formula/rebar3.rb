class Rebar3 < Formula
  desc "Erlang build tool"
  homepage "http://www.rebar3.org"

  devel do
    url "https://github.com/rebar/rebar3/archive/3.0.0-beta.3.tar.gz"
    version "3.0.0-beta.3"
    sha256 "8acfb89ed638e6ee0d364509ddacf2fbf1609f0c4de4eb1a775da4cfebe2053d"

    depends_on "erlang"
  end

  def install
    system "./bootstrap"
    bin.install "rebar3"
  end

  test do
    system bin/"rebar3", "--version"
  end
end
