# typed: false
# frozen_string_literal: true

# Scalix Cloud CLI — the platform CLI for Scalix Cloud (scalix.world).
# Prebuilt binaries from the public distribution repo; source lives in the
# private platform monorepo. Version tracks the npm `scalix-cloud` package.
class ScalixCloud < Formula
  desc "CLI for Scalix Cloud — database, functions, AI, storage, one API key"
  homepage "https://scalix.world"
  version "1.6.1"
  license "BUSL-1.1"

  BASE = "https://github.com/scalixworld/scalix-cloud-cli/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-apple-darwin"
      sha256 "19471df80a39439f9e10a29c3c7c0a1139744a5a14b71f930ec392176143ac73"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-apple-darwin"
      sha256 "7686204c4647880c4ac6799fc869fc5b918f76d93aac581fa0fc5ad36a6a1856"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-unknown-linux-gnu"
      sha256 "26ed9dff24a3c98822f351a2a46a6d6c34589cb0f3a65c46374213b6a2ca944a"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-unknown-linux-gnu"
      sha256 "4671e39ace9afcfd322da2c786ff97e915fef4f0e0006351f52de6a9b019624f"
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
