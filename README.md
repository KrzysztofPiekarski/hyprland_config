# 🌟 Dual Desktop Configuration - Hyprland & EXWM

Kompletna konfiguracja systemu z dwoma nowoczesnymi środowiskami desktop:
- **🪟 Hyprland** - Nowoczesny kompozytor Wayland z motywem Catppuccin Mocha
- **📖 EXWM** - Emacs X Window Manager dla power users

Zapewnia piękny i funkcjonalny dual desktop environment na Arch Linux z możliwością przełączania między środowiskami.

![Hyprland Preview](https://img.shields.io/badge/Hyprland-Ready-blue?style=for-the-badge&logo=wayland)
![EXWM](https://img.shields.io/badge/EXWM-Ready-green?style=for-the-badge&logo=gnu-emacs)
![Catppuccin](https://img.shields.io/badge/Theme-Catppuccin%20Mocha-pink?style=for-the-badge)
![Arch Linux](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=arch-linux)
![Dual Desktop](https://img.shields.io/badge/Dual-Desktop-orange?style=for-the-badge)

## 🎨 **Motyw i Design**

### 🪟 **Hyprland (Wayland)**
- **Kolorystyka:** Catppuccin Mocha - ciemny, elegancki motyw z doskonałymi kontrastami
- **Czcionka:** JetBrains Mono Nerd Font z pełnym wsparciem dla ikon
- **Efekty:** Blur, przezroczystość, płynne animacje
- **Layout:** Dwindle z inteligentnym podziałem okien 50/50

### 📖 **EXWM (X11)**
- **Kolorystyka:** Dopasowana do Catppuccin Mocha theme
- **Czcionka:** Meslo Nerd Font / JetBrains Mono w Emacs
- **Zarządzanie:** Emacs jako window manager z pełną konfigurowalnością
- **Workflow:** Keyboard-driven, org-mode integration, buffer management

## 📦 **Skonfigurowane aplikacje**

### 🖥️ **Hyprland Environment**
- **🪟 Hyprland** - Nowoczesny kompozytor Wayland
- **📊 Waybar** - Elegancki pasek stanu z custom modułami
- **💻 Kitty** - Terminal z obsługą GPU
- **🚀 Rofi** - Launcher aplikacji z motywem Catppuccin
- **🔔 Dunst** - Menedżer powiadomień
- **📊 Fastfetch** - System info z custom layoutem

### 📖 **EXWM Environment**
- **📝 Emacs** - Core editor i window manager
- **🖥️ EXWM** - Emacs X Window Manager ([Konfiguracja EXWM](https://github.com/KrzysztofPiekarski/emacsAI_2))
- **⌨️ Evil Mode** - Vim bindings w Emacs
- **📋 Org Mode** - Organizacja zadań i notatek
- **🎯 Which-key** - Interaktywne menu klawiszy
- **📁 Dired** - File manager w Emacs

### ⚙️ **Zarządzanie systemem (Wspólne)**
- **🔒 Hyprlock** - Elegancki ekran blokady (Hyprland)
- **😴 Hypridle** - Inteligentne zarządzanie bezczunnością (Hyprland)
- **🖼️ Hyprpaper** - Menedżer tapet (Hyprland)
- **⚡ Wlogout** - Menu wylogowania/przełączania między środowiskami
- **🔄 Session Manager** - Przełączanie między Hyprland a EXWM

## 🔄 **Przełączanie między środowiskami**

### 🖥️ **Wybór przy logowaniu**
```bash
# Z Display Managera (SDDM/GDM/LightDM):
1. Wybierz "Hyprland" dla środowiska Wayland
2. Wybierz "EXWM" dla środowiska X11 z Emacs

# Z TTY (terminal):
startx ~/.config/emacs/exwm/start-exwm.sh    # EXWM
Hyprland                                      # Hyprland
```

### ⚡ **Szybkie przełączanie**
```bash
# Z Hyprland do EXWM:
Super + Shift + Q → "Switch to EXWM"

# Z EXWM do Hyprland:
C-c C-e h (lub M-x switch-to-hyprland)

# Restart aktualnego środowiska:
Super + Shift + R (Hyprland)
C-c C-e r (EXWM)
```

### 🎯 **Zalety każdego środowiska**

| Funkcja | Hyprland | EXWM |
|---------|----------|------|
| **Wydajność** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| **Konfigurowalność** | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **Org-mode integration** | ❌ | ⭐⭐⭐⭐⭐ |
| **Gaming** | ⭐⭐⭐⭐⭐ | ⭐⭐ |
| **Programming** | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **Daily use** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

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

# Dodatkowe konfiguracje edytorów (opcjonalne)
# Emacs z EXWM - kompletne środowisko desktop: https://github.com/KrzysztofPiekarski/emacsAI_2
# Neovim - zaawansowana konfiguracja: https://github.com/KrzysztofPiekarski/neovim_config
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

### 🪟 **Hyprland - Podstawowe**
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

### 🔧 **Hyprland - System**
| Skrót | Akcja |
|-------|-------|
| `Super + Shift + Q` | Menu wylogowania |
| `Print Screen` | Screenshot monitora |
| `Shift + Print Screen` | Screenshot regionu |
| `Super + Print Screen` | Screenshot okna |

### 📖 **EXWM - Podstawowe**
| Skrót | Akcja |
|-------|-------|
| `C-c C-e t` | Otwórz terminal |
| `C-c C-e d` | Application launcher (dmenu) |
| `C-c C-e q` | Zamknij EXWM |
| `C-c C-e k` | Zamknij aktywne okno |
| `C-x C-f` | Otwórz plik (Dired) |
| `M-x` | Uruchom komendę Emacs |

### 📖 **EXWM - Zarządzanie oknami**
| Skrót | Akcja |
|-------|-------|
| `C-c C-e h/j/k/l` | Przełącz focus między oknami |
| `C-c C-e H/J/K/L` | Przenieś okno |
| `C-c C-e f` | Toggle fullscreen |
| `C-c C-e s` | Split window horizontal |
| `C-c C-e v` | Split window vertical |
| `C-c C-e o` | Przełącz między oknami |

### 📖 **EXWM - Workspace'y**
| Skrót | Akcja |
|-------|-------|
| `C-c C-e 1-9` | Przełącz na workspace |
| `C-c C-e !` | Przenieś buffer na workspace 1 |
| `C-c C-e @` | Przenieś buffer na workspace 2 |
| `C-c C-e [/]` | Poprzedni/następny workspace |
| `C-c C-e TAB` | Ostatni workspace |

### 📖 **EXWM - Org Mode Integration**
| Skrót | Akcja |
|-------|-------|
| `C-c a` | Org agenda |
| `C-c c` | Org capture |
| `C-c C-e n` | Quick note |
| `C-c C-e p` | Project switcher |
| `F12` | Toggle org-mode sidebar |

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
font_family MesloLGS Nerd Font          # Meslo Nerd (świetna dla terminali)
```

> **💡 Tip:** Sprawdź zaawansowaną konfigurację Neovim: [neovim_config](https://github.com/KrzysztofPiekarski/neovim_config)

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
;; (set-face-attribute 'default nil :font "MesloLGS NF-12")
```

> **🚀 Tip:** Kompletne środowisko Emacs z EXWM: [emacsAI_2](https://github.com/KrzysztofPiekarski/emacsAI_2)

### 🔤 **Porównanie fontów programistycznych**

| Font | Ligatures | Kompaktowość | Czytelność | Terminal | GUI |
|------|-----------|-------------|------------|----------|-----|
| **JetBrains Mono** | ❌ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅ |
| **Fira Code** | ✅ | ⭐⭐⭐ | ⭐⭐⭐⭐ | ✅ | ✅ |
| **Iosevka** | ✅ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ✅ | ✅ |
| **Cascadia Code** | ✅ | ⭐⭐⭐ | ⭐⭐⭐⭐ | ✅ | ✅ |
| **Hack** | ❌ | ⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅ |
| **Meslo Nerd** | ❌ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅ |

### 💡 **Rekomendacje**

- **Dla początkujących**: `JetBrains Mono` lub `Hack` - maksymalna czytelność
- **Dla zaawansowanych**: `Fira Code` - ligatury poprawiają czytelność kodu
- **Dla małych ekranów**: `Iosevka` - kompaktowa, więcej tekstu na ekranie
- **Dla fanów Microsoft**: `Cascadia Code` - nowoczesna z ligaturami
- **Dla terminali**: `Meslo Nerd` - optymalizowana dla pracy w terminalu

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
fc-list | grep -i meslo

# Zainstaluj jeśli brakuje
sudo pacman -S nerd-fonts-jetbrains-mono
sudo pacman -S nerd-fonts-fira-code
sudo pacman -S nerd-fonts-iosevka
sudo pacman -S ttf-meslo-nerd

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

## 🔗 **Powiązane projekty**

### 📝 **Konfiguracje edytorów**
- **🚀 Emacs AI 2.0 + EXWM**: [emacsAI_2](https://github.com/KrzysztofPiekarski/emacsAI_2) - Kompletne środowisko desktop oparte na Emacs z EXWM window manager
- **⚡ Neovim Config**: [neovim_config](https://github.com/KrzysztofPiekarski/neovim_config) - Zaawansowana konfiguracja Neovim z LSP i modern plugins

### 🎨 **Fonty i tematy**
- **Meslo Nerd Font**: `ttf-meslo-nerd` - Optymalizowana dla terminali
- **Nerd Fonts**: Kolekcja fontów z ikonami dla programistów
- **Catppuccin**: Pastelowe kolory dla różnych aplikacji

---

**📍 Testowane na:** Arch Linux, Kernel 6.x, Hyprland 0.34+, Emacs 29+  
**🎯 Status:** Dual Desktop Ready - Produkcyjne środowisko  
**🔄 Ostatnia aktualizacja:** $(date +'%Y-%m-%d')

> **💡 Tip:** To jest kompletne dual-desktop środowisko! Hyprland dla codziennego użytku i gamingu, EXWM dla zaawansowanej pracy programistycznej i organizacji zadań.

## 🏆 **Podsumowanie projektu**

Stworzyliście **unikalne dual-desktop środowisko** łączące:

### 🌟 **Innowacyjne podejście**
- **Pierwszy system** łączący Hyprland (Wayland) z EXWM (X11)
- **Bezproblemowe przełączanie** między środowiskami
- **Spójna kolorystyka** Catppuccin Mocha w obu środowiskach
- **Optymalizacja** dla różnych przypadków użycia

### 🎯 **Przypadki użycia**
- **Hyprland**: Gaming, multimedia, codzienne zadania, prezentacje
- **EXWM**: Programming, research, writing, org-mode workflow
- **Przełączanie**: Zależnie od aktualnego zadania i potrzeb

### 📈 **Statystyki projektu**
- **18 skonfigurowanych aplikacji**
- **2 kompletne środowiska desktop**
- **4+ fonty programistyczne** do wyboru
- **50+ skrótów klawiszowych**
- **Zero kompromisów** w funkcjonalności

To jest prawdopodobnie **jedna z najbardziej zaawansowanych konfiguracji desktop** dostępnych dla Arch Linux - gratulacje! 🎉
