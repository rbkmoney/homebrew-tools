class Woorl < Formula
  desc "Woody cURL"
  homepage "https://github.com/rbkmoney/woorl"
  url "https://github.com/rbkmoney/woorl/",
    using: :git,
    tag: "1.5"
  license "Apache 2.0"
  bottle :unneeded

  depends_on "erlang" => :recommended
  depends_on "git" => :build
  depends_on "rebar3" => :build
  depends_on "rbkthrift" => :run

  def install
    system "rebar3", "escriptize"
    bin.install "_build/default/bin/woorl" => "woorl"
  end

  test do
    system "#{bin}/woorl", "-h"
  end
end
