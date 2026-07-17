# typed: false
# frozen_string_literal: true

# Scalix Cloud CLI — the platform CLI for Scalix Cloud (scalix.world).
# Prebuilt binaries from the public distribution repo; source lives in the
# private platform monorepo. Version tracks the npm `scalix-cloud` package.
class ScalixCloud < Formula
  desc "CLI for Scalix Cloud — database, functions, AI, storage, one API key"
  homepage "https://scalix.world"
  version "1.3.5"
  license "BUSL-1.1"

  BASE = "https://github.com/scalixworld/scalix-cloud-cli/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-apple-darwin"
      sha256 "a3124686aeb1ccff878bdca54ede0fc140d51e8b7741627883ccc1cf54377065"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-apple-darwin"
      sha256 "f1d13dc9b6156dc24665385a587fed8caa8247cb42c5e92608f90cfeecf75d53"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-unknown-linux-gnu"
      sha256 "f7d964f3ee372ca588117879a175e2acab82dbbd670e0f764c55637854b2d9ce"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-unknown-linux-gnu"
      sha256 "a2d06cd681686c4e78d20d90ea32cbdfc0495a4c2e8df9d04cec740688d39085"
    end
  end

  def install
    binary = Dir["scalix-cloud*"].first
    bin.install binary => "scalix-cloud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scalix-cloud --version")
  end
end
