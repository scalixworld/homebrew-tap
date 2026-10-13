# typed: false
# frozen_string_literal: true

# Scalix Cloud CLI — the platform CLI for Scalix Cloud (scalix.world).
# Prebuilt binaries from the public distribution repo; source lives in the
# private platform monorepo. Version tracks the npm `scalix-cloud` package.
class ScalixCloud < Formula
  desc "CLI for Scalix Cloud — database, functions, AI, storage, one API key"
  homepage "https://scalix.world"
  version "1.5.0"
  license "BUSL-1.1"

  BASE = "https://github.com/scalixworld/scalix-cloud-cli/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-apple-darwin"
      sha256 "1c582c8160a12faf3c5decacea196ada821dd725b89026da4d6c6861c85ae116"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-apple-darwin"
      sha256 "3b68ecbe66eef7799da79d9c7a4cc86da0de5116f9be3cd10df419c3611d1f12"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/scalix-cloud-aarch64-unknown-linux-gnu"
      sha256 "871df18b7e31ea1f2500573524940a6ef9ff631c0374b96e3a325dab424edf8f"
    end
    on_intel do
      url "#{BASE}/scalix-cloud-x86_64-unknown-linux-gnu"
      sha256 "f53cda81ebe89effea2f34f2c6f9c7af005d8d98590ea637bb14b2b9f7569ed4"
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
