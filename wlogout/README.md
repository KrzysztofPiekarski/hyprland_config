# 🚪 Wlogout Configuration - Catppuccin Mocha

## 📋 Overview

Elegant logout menu configuration with Catppuccin Mocha theme integration, featuring glassmorphism effects and smooth animations.

## 🎨 Features

- **🌈 Catppuccin Mocha Theme** - Consistent color palette
- **💎 Glassmorphism Effects** - Modern transparency and blur
- **✨ Smooth Animations** - Professional hover effects
- **🎯 Custom Icons** - SVG icons with theme colors
- **⌨️ Keyboard Shortcuts** - Quick access keys
- **🔧 Customizable Layout** - Flexible button arrangement

## 📁 Files Structure

```
wlogout/
├── layout              # Button layout configuration
├── style.css          # Catppuccin Mocha styling
├── launch_wlogout.sh   # Launcher script
├── icons/             # Custom SVG icons
│   ├── lock.svg       # Lock screen icon
│   ├── logout.svg     # Logout icon
│   ├── suspend.svg    # Suspend icon
│   ├── hibernate.svg  # Hibernate icon
│   ├── reboot.svg     # Reboot icon
│   └── shutdown.svg   # Shutdown icon
└── README.md          # This file
```

## 🎮 Button Actions

| Button | Action | Keybind | Color |
|--------|--------|---------|-------|
| 🔒 Lock | `hyprlock` | `l` | Yellow (#f9e2af) |
| 🚪 Logout | `pkill -KILL -u $USER` | `e` | Pink (#f38ba8) |
| 💤 Suspend | `systemctl suspend` | `u` | Blue (#89b4fa) |
| 🛌 Hibernate | `systemctl hibernate` | `h` | Purple (#cba6f7) |
| 🔄 Reboot | `systemctl reboot` | `r` | Orange (#fab387) |
| ⚡ Shutdown | `systemctl poweroff` | `s` | Green (#a6e3a1) |

## 🚀 Usage

### Manual Launch
```bash
# From wlogout directory
./launch_wlogout.sh

# Or directly
wlogout --layout ./layout --css ./style.css
```

### Integration with Hyprland
Add to `hyprland.conf`:
```bash
bind = $mainMod, Escape, exec, ~/.config/wlogout/launch_wlogout.sh
```

### Integration with Waybar
Add custom module to `waybar/config.jsonc`:
```json
"custom/power_btn": {
    "format": "⏻",
    "tooltip": false,
    "on-click": "~/.config/wlogout/launch_wlogout.sh"
}
```

## 🎨 Visual Style

- **Background**: Semi-transparent dark with blur effect
- **Buttons**: Glassmorphism cards with colored left borders
- **Hover Effects**: Scale, glow, and shadow animations
- **Typography**: Bold, readable fonts
- **Layout**: 3 buttons per row, centered

## ⚙️ Customization

### Button Layout
Edit `layout` file to modify:
- Button order
- Actions
- Keybindings
- Text labels

### Styling
Edit `style.css` to customize:
- Colors and transparency
- Animation timing
- Button sizes
- Spacing and margins

### Icons
Replace SVG files in `icons/` directory with custom designs while maintaining the color scheme.

## 📦 Dependencies

- `wlogout` - The logout menu application
- `hyprlock` - For lock screen functionality
- `systemctl` - For system power management

## 🔧 Installation

1. Copy configuration to `~/.config/wlogout/`
2. Make launcher script executable: `chmod +x launch_wlogout.sh`
3. Add keybinding to your window manager
4. Test with `./launch_wlogout.sh`

---

*Part of the Dual Desktop Environment Setup - Hyprland & EXWM*
