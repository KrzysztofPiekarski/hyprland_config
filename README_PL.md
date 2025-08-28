# 🌟 Hyprland Configuration - Catppuccin Mocha

Nowoczesna i elegancka konfiguracja Hyprland z motywem Catppuccin Mocha, zapewniająca piękny i funkcjonalny desktop environment na Arch Linux.

![Hyprland Preview](https://img.shields.io/badge/Hyprland-Ready-blue?style=for-the-badge&logo=wayland)
![Catppuccin](https://img.shields.io/badge/Theme-Catppuccin%20Mocha-pink?style=for-the-badge)
![Arch Linux](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=arch-linux)

## 🎨 **Motyw i Design**

- **Kolorystyka:** Catppuccin Mocha - ciemny, elegancki motyw z doskonałymi kontrastami
- **Czcionka:** JetBrains Mono Nerd Font z pełnym wsparciem dla ikon
- **Efekty:** Blur, przezroczystość, płynne animacje
- **Layout:** Dwindle z inteligentnym podziałem okien 50/50

## 📦 **Skonfigurowane aplikacje**

### 🖥️ **Główne komponenty**
- **🪟 Hyprland** - Nowoczesny kompozytor Wayland
- **📊 Waybar** - Elegancki pasek stanu z custom modułami
- **💻 Kitty** - Terminal z obsługą GPU
- **🚀 Rofi** - Launcher aplikacji z motywem Catppuccin
- **🔔 Dunst** - Menedżer powiadomień
- **📊 Fastfetch** - System info z custom layoutem

### ⚙️ **Zarządzanie systemem**
- **🔒 Hyprlock** - Elegancki ekran blokady
- **😴 Hypridle** - Inteligentne zarządzanie bezczunnością
- **🖼️ Hyprpaper** - Menedżer tapet

## 🚀 **Instalacja**

### 📋 **Wymagania**

```bash
# Podstawowe pakiety (Arch Linux)
sudo pacman -S hyprland waybar kitty rofi dunst polkit-gnome
sudo pacman -S brightnessctl pamixer playerctl wl-clipboard
sudo pacman -S grim slurp hyprshot networkmanager blueman

# Czcionki - wybierz jedną lub więcej według preferencji
sudo pacman -S nerd-fonts-jetbrains-mono ttf-font-awesome    # Rekomendowane
# Alternatywnie popularne fonty dla edytorów:
sudo pacman -S nerd-fonts-fira-code                         # Fira Code z ligaturami
sudo pacman -S nerd-fonts-iosevka                           # Iosevka - kompaktowa
sudo pacman -S ttf-cascadia-code                            # Cascadia Code (Microsoft)
sudo pacman -S nerd-fonts-hack                              # Hack - czytelna 
sudo pacman -S ttf-meslo-nerd                               # Meslo Nerd 

# Opcjonalne dla pełnej funkcjonalności
sudo pacman -S thunar firefox fastfetch neovim emacs
yay -S hyprlock hypridle hyprpaper wlogout                  # lub z AUR
```

### 📁 **Instalacja konfiguracji**

```bash
# 1. Sklonuj repozytorium
git clone https://github.com/username/Hypr_My_Configure.git
cd Hypr_My_Configure

# 2. Utwórz kopie zapasowe istniejących konfiguracji
mkdir -p ~/.config/backup
mv ~/.config/hypr ~/.config/backup/ 2>/dev/null || true
mv ~/.config/waybar ~/.config/backup/ 2>/dev/null || true
mv ~/.config/kitty ~/.config/backup/ 2>/dev/null || true
mv ~/.config/rofi ~/.config/backup/ 2>/dev/null || true
mv ~/.config/dunst ~/.config/backup/ 2>/dev/null || true

# 3. Skopiuj konfiguracje
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r kitty ~/.config/
cp -r rofi ~/.config/
cp -r dunst ~/.config/
cp -r fastfetch ~/.config/

# 4. Ustaw uprawnienia wykonywania dla skryptów
chmod +x ~/.config/rofi/leave/leave.sh
chmod +x ~/.config/waybar/scripts/*

# 5. Uruchom Hyprland
Hyprland
```

## ⌨️ **Skróty klawiszowe**

### 🖥️ **Podstawowe**
| Skrót | Akcja |
|-------|-------|
| `Super + Return` | Otwórz terminal (Kitty) |
| `Super + R` | Launcher aplikacji (Rofi) |
| `Super + Q` | Zamknij Hyprland |
| `Super + C` | Zamknij aktywne okno |
| `Super + F` | Menedżer plików (Thunar) |
| `Super + B` | Przeglądarka (Firefox) |
| `Super + L` | Zablokuj ekran |

### 🪟 **Zarządzanie oknami**
| Skrót | Akcja |
|-------|-------|
| `Super + H/J/K/L` | Przełącz focus między oknami |
| `Super + Shift + H/J/K/L` | Przenieś okno |
| `Super + Ctrl + H/J/K/L` | Zmień rozmiar okna |
| `Super + V` | Przełącz floating mode |
| `Super + Shift + M` | Fullscreen |
| `Super + Tab` | Przełącz między oknami |

### 🖥️ **Workspace'y**
| Skrót | Akcja |
|-------|-------|
| `Super + 1-10` | Przełącz na workspace |
| `Super + Shift + 1-10` | Przenieś okno na workspace |
| `Super + S` | Scratchpad (workspace specjalny) |
| `Super + Mouse wheel` | Przełączaj workspace'y |

### 🔧 **System**
| Skrót | Akcja |
|-------|-------|
| `Super + Shift + Q` | Menu wylogowania |
| `Print Screen` | Screenshot monitora |
| `Shift + Print Screen` | Screenshot regionu |
| `Super + Print Screen` | Screenshot okna |

## 🎯 **Funkcje**

### 🎨 **Personalizacja**
- **Dynamiczne gap'y** - `Super + Ctrl + Shift + +/-`
- **Tryby gap'ów** - `Super + Ctrl + Shift + 1/2/3/0`
- **Workspace'y tematyczne** - `Super + Alt + B/C/F/D/G/M`

### 📊 **Waybar moduły**
- 🌡️ Pogoda (Tarnobrzeg)
- 📶 Sieć z monitoringiem pasma
- 🔋 Bateria z zaawansowanymi stanami
- 🔊 Audio z kontrolą mikrofonu
- 💾 Użycie RAM i CPU
- 🕒 Zegar z kalendarzem
- 🎵 Kontrola mediów

### ⚡ **Optymalizacje**
- VRR (Variable Refresh Rate) dla monitorów 120Hz+
- VFR (Variable Frame Rate) dla oszczędności energii
- Inteligentne zarządzanie DPMS
- Window swallowing dla terminali

## 🗂️ **Struktura plików**

```
Hypr_My_Configure/
├── hypr/                   # Główna konfiguracja Hyprland
│   ├── hyprland.conf      # Konfiguracja kompozytora
│   ├── hyprlock.conf      # Ekran blokady
│   ├── hypridle.conf      # Zarządzanie bezczunnością
│   ├── hyprpaper.conf     # Menedżer tapet
│   └── mocha.conf         # Kolory Catppuccin
├── waybar/                # Pasek stanu
│   ├── config.jsonc       # Konfiguracja modułów
│   ├── style.css          # Style CSS
│   ├── extra-modules.jsonc # Dodatkowe moduły
│   └── scripts/           # Skrypty custom
├── kitty/                 # Terminal
│   ├── kitty.conf         # Główna konfiguracja
│   └── current-theme.conf # Motyw Catppuccin
├── rofi/                  # Launcher
│   ├── config.rasi        # Konfiguracja
│   ├── catppuccin.rasi    # Motyw
│   └── leave/leave.sh     # Menu wylogowania
├── dunst/                 # Powiadomienia
│   └── dunstrc            # Konfiguracja
└── fastfetch/             # System info
    ├── config_01.jsonc    # Layout 1
    ├── config_02.jsonc    # Layout 2
    ├── config_03.jsonc    # Layout 3
    └── pngs/              # Obrazy ASCII
```

## 🎨 **Fonty dla edytorów kodu**

Ta konfiguracja używa **JetBrains Mono Nerd Font** jako domyślnej czcionki. Oto popularne alternatywy dla różnych edytorów:

### 📝 **Neovim**
Neovim używa czcionki terminala. W Kitty (naszym terminalu) domyślnie ustawiona jest **Hack Nerd Font**, ale możesz zmienić na:

```bash
# W kitty.conf zmień linię:
font_family JetBrains Mono Nerd Font    # Obecna (rekomendowana)
# lub:
font_family Fira Code Nerd Font         # Z ligaturami
font_family Iosevka Nerd Font           # Kompaktowa
font_family CaskaydiaCove Nerd Font     # Cascadia Code
font_family Hack Nerd Font              # Bardzo czytelna
```

### 📖 **Emacs**
Emacs może używać różnych czcionek. Dodaj do init.el:

```elisp
;; JetBrains Mono (domyślna w konfiguracji)
(set-face-attribute 'default nil :font "JetBrains Mono-12")

;; Alternatywy:
;; (set-face-attribute 'default nil :font "Fira Code-12")
;; (set-face-attribute 'default nil :font "Iosevka-12") 
;; (set-face-attribute 'default nil :font "Cascadia Code-12")
;; (set-face-attribute 'default nil :font "Hack-12")
```

### 🔤 **Porównanie fontów programistycznych**

| Font | Ligatures | Kompaktowość | Czytelność | Terminal | GUI |
|------|-----------|-------------|------------|----------|-----|
| **JetBrains Mono** | ❌ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅ |
| **Fira Code** | ✅ | ⭐⭐⭐ | ⭐⭐⭐⭐ | ✅ | ✅ |
| **Iosevka** | ✅ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ✅ | ✅ |
| **Cascadia Code** | ✅ | ⭐⭐⭐ | ⭐⭐⭐⭐ | ✅ | ✅ |
| **Hack** | ❌ | ⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅ |

### 💡 **Rekomendacje**

- **Dla początkujących**: `JetBrains Mono` lub `Hack` - maksymalna czytelność
- **Dla zaawansowanych**: `Fira Code` - ligatury poprawiają czytelność kodu
- **Dla małych ekranów**: `Iosevka` - kompaktowa, więcej tekstu na ekranie
- **Dla fanów Microsoft**: `Cascadia Code` - nowoczesna z ligaturami

## 🔧 **Dostosowywanie**

### 🌍 **Zmiana lokalizacji pogody**
W `waybar/config.jsonc` zmień `Tarnobrzeg` na swoje miasto:
```json
"exec": "curl -s 'https://wttr.in/TwojeMiasto?format=%C+%t+%h+%w'"
```

### 🖼️ **Dodanie avatara**
Skopiuj swoje zdjęcie jako `~/.face` i odkomentuj sekcję w `hypr/hyprlock.conf`

### 🖥️ **Konfiguracja monitorów**
Edytuj `hypr/hyprland.conf` sekcję `MONITORS`:
```conf
monitor=eDP-1,1920x1080@120,0x0,1
monitor=HDMI-A-1,1920x1080@60,1920x0,1
```

### 🎨 **Zmiana tapet**
Zaktualizuj ścieżki w `hypr/hyprpaper.conf`:
```conf
preload = /ścieżka/do/twojej/tapety.jpg
wallpaper = eDP-1,/ścieżka/do/twojej/tapety.jpg
```

## 🛠️ **Rozwiązywanie problemów**

### 🔤 **Problemy z czcionkami**
```bash
# Sprawdź dostępność Nerd Fonts
fc-list | grep -i jetbrains
fc-list | grep -i "fira code"
fc-list | grep -i iosevka

# Zainstaluj jeśli brakuje
sudo pacman -S nerd-fonts-jetbrains-mono
sudo pacman -S nerd-fonts-fira-code
sudo pacman -S nerd-fonts-iosevka

# Sprawdź czy fonty są widoczne w systemie
fc-cache -fv

# Test fontów w terminalu
echo "Test ligatur: -> => != >= <="
```

### ⚙️ **Konfiguracja fontów w edytorach**
```bash
# Neovim z NvChad/LazyVim - dodaj do config/lua/options.lua:
vim.opt.guifont = "JetBrains Mono Nerd Font:h12"

# Emacs Doom - dodaj do config.el:
(setq doom-font (font-spec :family "JetBrains Mono" :size 12))

# VS Code - settings.json:
{
  "editor.fontFamily": "'JetBrains Mono', 'Fira Code', monospace",
  "editor.fontLigatures": true,
  "editor.fontSize": 12
}
```

### 🔊 **Problemy z audio**
```bash
# Sprawdź dostępność pamixer
which pamixer || sudo pacman -S pamixer

# Sprawdź device'y audio
wpctl status
```

### 📶 **Problemy z siecią w Waybar**
```bash
# Sprawdź NetworkManager
systemctl status NetworkManager
sudo systemctl enable --now NetworkManager
```

## 🤝 **Współpraca**

Wszelkie sugestie, bugfixy i pull requesty są mile widziane! 

### 📝 **Zgłaszanie problemów**
1. Sprawdź logi: `journalctl -f`
2. Sprawdź logi Hyprland: `hyprctl monitors`
3. Utwórz issue z opisem problemu

### 🔄 **Pull Requests**
1. Fork repozytorium
2. Utwórz branch dla swojej funkcji
3. Dokonaj zmian z opisowymi commit message
4. Utwórz pull request

## 📄 **Licencja**

Ten projekt jest dostępny na licencji MIT. Zobacz plik [LICENSE](LICENSE) po szczegóły.

## 🙏 **Podziękowania**

- [Hyprland](https://hyprland.org/) - Za niesamowity kompozytor
- [Catppuccin](https://catppuccin.com/) - Za piękny motyw kolorów
- [Waybar](https://github.com/Alexays/Waybar) - Za elastyczny pasek stanu
- Społeczność r/unixporn za inspirację

---

**📍 Testowane na:** Arch Linux, Kernel 6.x, Hyprland 0.34+  
**🎯 Status:** Gotowe do użycia  
**🔄 Ostatnia aktualizacja:** $(date +'%Y-%m-%d')

> **💡 Tip:** Aby w pełni cieszyć się konfiguracją, upewnij się że masz zainstalowane wszystkie wymagane pakiety!
