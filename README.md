# Homebrew Tap for Waterball (水球)

本倉庫為 [Waterball](https://github.com/cerebellum92/waterball) macOS 版的官方 Homebrew Tap。

## 安裝

```bash
brew install --cask cerebellum92/waterball/waterball
```

## 更新

```bash
brew upgrade --cask waterball
```

## 移除

```bash
# 移除應用程式
brew uninstall --cask waterball

# 移除應用程式與本地設定／快取檔案
brew uninstall --zap --cask waterball
```

## Gatekeeper 安全提示說明

Waterball 為非營利開源軟體，未購買 Apple 商業開發者憑證。首次安裝或更新後若遇到「無法確認開發者」提示，請執行：

```bash
xattr -cr /Applications/Waterball.app
```

或前往 Mac「系統設定 ➔ 隱私權與安全性」點選「仍要打開 (Open Anyway)」。
