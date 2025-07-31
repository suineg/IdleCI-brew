# IdleCI Homebrew Installation for macOS

This guide explains how to install and use IdleCI (Legends of Idleon Cheat Injector) on macOS using Homebrew.

## 🍺 Prerequisites

- **macOS** (Intel or Apple Silicon)
- **Homebrew** installed ([Install Homebrew](https://brew.sh/))
- **Legends of Idleon** (Steam version recommended)

## 📦 Installation Methods

### Method 1: Using Homebrew Formula (Recommended)

```bash
# Install from the Homebrew formula
brew install https://raw.githubusercontent.com/suineg/IdleCI-brew/brew/idleci.rb

# Or download the formula and install locally
wget https://raw.githubusercontent.com/suineg/IdleCI-brew/brew/idleci.rb
brew install ./idleci.rb
```

### Method 2: Manual Installation

```bash
# Download the latest release
wget https://github.com/suineg/IdleCI-brew/releases/latest/download/IdleCI-macOS-arm64.zip  # For Apple Silicon
# or
wget https://github.com/suineg/IdleCI-brew/releases/latest/download/IdleCI-macOS-x64.zip    # For Intel Macs

# Extract and install
unzip IdleCI-macOS-*.zip
sudo cp IdleCI-macos-* /usr/local/bin/idleci
sudo chmod +x /usr/local/bin/idleci
```

## 🚀 Usage

### Basic Usage

1. **Start Legends of Idleon** (Steam version)
2. **Run IdleCI:**
   ```bash
   idleci
   ```
3. **Access the Web UI** at [http://localhost:8080](http://localhost:8080)

### Command Line Options

```bash
# Run with debug logging
idleci -d

# Use custom config file
idleci -c /path/to/custom-config.js

# Show help
idleci --help
```

### Configuration

The default configuration is installed to:
- **Homebrew**: `$(brew --prefix)/share/idleci/config.custom.example.js`
- **Manual**: Copy from the extracted archive

```bash
# Copy example config to customize
cp $(brew --prefix)/share/idleci/config.custom.example.js ~/idleci-config.js

# Edit the config
nano ~/idleci-config.js

# Use custom config
idleci -c ~/idleci-config.js
```

## 🧪 Testing the Installation

```bash
# Verify installation
idleci --help

# Check if binary is properly linked
which idleci

# Test web server (will start on localhost:8080)
idleci -d
```

## 🔧 Architecture Support

- **Apple Silicon (M1/M2/M3)**: `IdleCI-macOS-arm64`
- **Intel Macs**: `IdleCI-macOS-x64`

The Homebrew formula automatically detects your architecture and installs the appropriate version.

## 📁 File Locations

When installed via Homebrew:

```
/opt/homebrew/bin/idleci                           # Main executable (Apple Silicon)
/usr/local/bin/idleci                              # Main executable (Intel)
/opt/homebrew/share/idleci/cheats.js               # Cheat definitions
/opt/homebrew/share/idleci/config.custom.example.js # Example config
```

## 🐛 Troubleshooting

### Permission Issues
```bash
# Fix execution permissions
chmod +x $(which idleci)
```

### Port Already in Use
```bash
# Check what's using port 8080
lsof -i :8080

# Kill process if needed
kill -9 $(lsof -t -i:8080)
```

### Game Not Detected
1. Ensure Legends of Idleon is running
2. Try running with debug mode: `idleci -d`
3. Check the debug output for Chrome DevTools connection issues

### macOS Security Warning
If you get a security warning about an unsigned application:
1. Go to **System Preferences** → **Security & Privacy**
2. Click **Allow Anyway** for IdleCI
3. Or run: `sudo xattr -rd com.apple.quarantine $(which idleci)`

## 🔄 Updating

### Via Homebrew
```bash
brew upgrade idleci
```

### Manual Update
```bash
# Download new version and replace
wget https://github.com/suineg/IdleCI-brew/releases/latest/download/IdleCI-macOS-arm64.zip
unzip IdleCI-macOS-*.zip
sudo cp IdleCI-macos-* /usr/local/bin/idleci
```

## ⚠️ Important Notes

- **Educational Use Only**: This tool is for educational and personal use
- **Use at Your Own Risk**: Authors are not responsible for any game bans or issues
- **Steam Version Recommended**: Works best with the Steam version of Legends of Idleon
- **Chrome DevTools**: Uses Chrome DevTools Protocol to inject code

## 🤝 Contributing

To contribute to the macOS port:

1. Fork the [IdleCI-brew repository](https://github.com/suineg/IdleCI-brew)
2. Make your changes
3. Test on both Intel and Apple Silicon if possible
4. Submit a pull request

## 📞 Support

- **GitHub Issues**: [Report bugs](https://github.com/suineg/IdleCI-brew/issues)
- **Original Project**: [Shinaii/IdleCI](https://github.com/Shinaii/IdleCI)

---

**Legends of Idleon** is property of **Lavaflame2**. 