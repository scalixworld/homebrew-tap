# typed: false
# frozen_string_literal: true

# Scalix Cloud CLI — the platform CLI for Scalix Cloud (scalix.world).
# Prebuilt binaries from the public distribution repo; source lives in the
# private platform monorepo. Version tracks the npm `scalix-cloud` package.
class ScalixCloud < Formula
  desc "CLI for Scalix Cloud — database, functions, AI, storage, one API key"
  homepage "https://scalix.world"
  version "1.3.4"
  license "BUSL-1.1"

  BASE = "https://github.com/scalixworld/scalix-cloud-cli/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-apple-darwin"
      sha256 "e4676e60aca4903ed77b32f03a1a6eb61d91bdf12e4e4f385211f373f89b57b1"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-apple-darwin"
      sha256 "ebb93f35de978eae6fac15b79ec0afd8c107d8aa9de757e6184614fb698f860a"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-unknown-linux-gnu"
      sha256 "2c75263db169eab44db109153fe80ee081c2246913fb807be112ae5aaccb9f33"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-unknown-linux-gnu"
      sha256 "6e4e09c57675c5993490b3dafb9aa23be9d76a6c19b6cad97f25edd25589ab5e"
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
