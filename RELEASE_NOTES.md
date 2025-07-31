# IdleCI v1.1.0-Legacy-macOS - Homebrew Release

## 🎉 macOS Support Now Available!

This release brings full macOS support to IdleCI (Legends of Idleon Cheat Injector) with seamless Homebrew integration.

## ✨ New Features

### 🍺 **Homebrew Installation**
```bash
# Install via Homebrew formula
brew install https://raw.githubusercontent.com/suineg/IdleCI-brew/brew/idleci.rb

# Run the application
idleci
```

### 🏗️ **Native macOS Builds**
- **Apple Silicon (M1/M2/M3)**: `IdleCI-macos-arm64` - 55.6MB
- **Intel Macs**: `IdleCI-macos-x64` - 60.7MB
- **Architecture Auto-Detection**: Homebrew formula automatically installs the correct version

### 🔧 **Enhanced Build System**
- Added macOS targets to `pkg` configuration
- Updated GitHub Actions for automated macOS builds
- Both ARM64 and x64 binaries built automatically on release

## 📦 Installation Options

### Option 1: Homebrew (Recommended)
```bash
brew install https://raw.githubusercontent.com/suineg/IdleCI-brew/brew/idleci.rb
idleci
```

### Option 2: Direct Download
Download the appropriate version for your Mac:
- **Apple Silicon**: [IdleCI-macOS-arm64.zip](https://github.com/suineg/IdleCI-brew/releases)
- **Intel**: [IdleCI-macOS-x64.zip](https://github.com/suineg/IdleCI-brew/releases)

## 🚀 Usage

1. **Start Legends of Idleon** (Steam version)
2. **Run IdleCI**: `idleci`
3. **Access Web UI**: [http://localhost:8080](http://localhost:8080)

### Command Options
```bash
idleci -d              # Debug mode
idleci -c config.js    # Custom config
idleci --help          # Show help
```

## 🔧 Full Feature Compatibility

✅ **Web UI** with real-time cheat management  
✅ **Chrome DevTools Protocol** integration  
✅ **Configuration file** support  
✅ **Debug logging** and troubleshooting  
✅ **Live cheat updates** without restart  

## 📁 Package Contents

Each release package includes:
- `IdleCI-macos-arm64` or `IdleCI-macos-x64` - Main executable
- `cheats.js` - Cheat definitions and functions
- `config.custom.example.js` - Example configuration file

## 🐛 Known Issues & Solutions

### macOS Security Warning
If you get a security warning:
```bash
sudo xattr -rd com.apple.quarantine /path/to/idleci
```

### Port 8080 Already in Use
```bash
lsof -i :8080                    # Check what's using the port
kill -9 $(lsof -t -i:8080)       # Kill the process
```

## 🔄 Upgrading

### From Previous Versions
This is the first macOS release, so no upgrade path is needed.

### Future Updates
```bash
brew upgrade idleci
```

## ⚠️ Important Notes

- **Educational Use Only**: This tool is for educational and personal use
- **Use at Your Own Risk**: Authors are not responsible for any bans or issues
- **Steam Version Recommended**: Works best with Steam version of Legends of Idleon
- **Unsigned Binaries**: You may need to allow the app in Security & Privacy settings

## 🙏 Credits

- **Original IdleCI**: [Shinaii/IdleCI](https://github.com/Shinaii/IdleCI)
- **macOS Port**: Created for [suineg/IdleCI-brew](https://github.com/suineg/IdleCI-brew)
- **iBelg** - Original Developer
- **Shinaii** - TypeScript rewrite and WebUI
- **Community Contributors** - Testing and feedback

## 📞 Support

- **GitHub Issues**: [Report macOS-specific bugs](https://github.com/suineg/IdleCI-brew/issues)
- **Original Project**: [General IdleCI support](https://github.com/Shinaii/IdleCI/issues)
- **Documentation**: See `HOMEBREW_SETUP.md` for detailed installation guide

---

**Legends of Idleon** is property of **Lavaflame2**. 