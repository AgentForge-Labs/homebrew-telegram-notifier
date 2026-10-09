class TelegramNotifier < Formula
  desc "Standalone Telegram Notifier CLI for public v1 notifications"
  homepage "https://github.com/AgentForge-Labs/telegram-notifier-distributions"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AgentForge-Labs/telegram-notifier-distributions/releases/download/telegram-notifier-cli-v0.1.0/telegram-notifier_0.1.0_darwin_arm64.tar.gz"
      sha256 "519ef24fb8a67c8f14448bdc3c376d4e4427823ffa2c32b935ec2814a0a98dce"
    else
      url "https://github.com/AgentForge-Labs/telegram-notifier-distributions/releases/download/telegram-notifier-cli-v0.1.0/telegram-notifier_0.1.0_darwin_amd64.tar.gz"
      sha256 "cbe368d4ff18a951c227577247d4c197168108f8180a9d21771a7b9c06c1ee94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AgentForge-Labs/telegram-notifier-distributions/releases/download/telegram-notifier-cli-v0.1.0/telegram-notifier_0.1.0_linux_arm64.tar.gz"
      sha256 "02e13babe4c165597d0a706b36bdcf6d6893e10b779ee37bc30e8ac67d7564e0"
    else
      url "https://github.com/AgentForge-Labs/telegram-notifier-distributions/releases/download/telegram-notifier-cli-v0.1.0/telegram-notifier_0.1.0_linux_amd64.tar.gz"
      sha256 "3227c8544e1404c86fc913c23a40a083df564780d618d5c29d5805bf6bf4e586"
    end
  end

  def install
    bin.install "telegram-notifier"
  end

  test do
    assert_match "telegram-notifier 0.1.0", shell_output("#{bin}/telegram-notifier version")
  end
end
