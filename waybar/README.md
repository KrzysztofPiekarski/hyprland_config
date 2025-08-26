# Waybar Configuration - Catppuccin Mocha Theme

Nowoczesna i elegancka konfiguracja waybar z motywem Catppuccin Mocha, oferująca lepszą funkcjonalność i estetykę.

## 🎨 Features

### Design
- **Motyw Catppuccin Mocha** - ciemny, elegancki design
- **Glassmorphism effect** - przezroczyste tło z efektem blur
- **Smooth animations** - płynne przejścia i efekty hover
- **Responsive design** - dostosowuje się do różnych rozdzielczości
- **Accessibility** - wskaźniki focus dla dostępności

### Funkcjonalność
- **Ikony Nerd Fonts** - piękne ikony dla wszystkich modułów
- **Rozszerzone workspace'y** - 10 workspace'ów z ikonami
- **Lepsze tooltips** - szczegółowe informacje na hover
- **Interaktywne moduły** - kliknięcia i scroll dla kontroli
- **Status aplikacji** - ikony dla popularnych aplikacji

## 📁 Pliki

- `config.jsonc` - główna konfiguracja waybar
- `style.css` - style CSS z motywem Catppuccin
- `advanced-modules.jsonc` - zaawansowane widgety i moduły
- `README.md` - ten plik

## 🚀 Instalacja

1. **Skopiuj pliki** do katalogu konfiguracyjnego waybar:
   ```bash
   cp config.jsonc ~/.config/waybar/
   cp style.css ~/.config/waybar/
   ```

2. **Zainstaluj wymagane pakiety**:
   ```bash
   # Arch Linux
   sudo pacman -S waybar nerd-fonts-jetbrains-mono
   
   # Lub dla innych dystrybucji
   sudo apt install waybar fonts-jetbrains-mono  # Ubuntu/Debian
   ```

3. **Uruchom waybar**:
   ```bash
   waybar
   ```

## ⚙️ Konfiguracja

### Dodawanie dodatkowych modułów

Możesz dodać moduły z pliku `advanced-modules.jsonc` do głównej konfiguracji:

1. Otwórz `config.jsonc`
2. Dodaj moduł do odpowiedniej sekcji (`modules-left`, `modules-center`, `modules-right`)
3. Skopiuj konfigurację modułu z `advanced-modules.jsonc`

Przykład dodania modułu Spotify:
```json
"modules-right": [
    "custom/spotify",
    "network",
    // ... inne moduły
]
```

### Dostosowywanie kolorów

Kolory są zdefiniowane w `style.css` zgodnie z paletą Catppuccin Mocha:
- `#1e1e2e` - tło
- `#cdd6f4` - tekst
- `#89b4fa` - niebieski
- `#f5c2e7` - różowy
- `#a6e3a1` - zielony
- `#f9e2af` - żółty
- `#fab387` - pomarańczowy
- `#f38ba8` - czerwony
- `#cba6f7` - fioletowy

## 🎯 Dostępne moduły

### Podstawowe
- **custom/arch** - logo Arch Linux z launcher'em
- **hyprland/workspaces** - workspace'y z ikonami
- **hyprland/window** - tytuł aktywnego okna
- **custom/weather** - pogoda dla Warszawy
- **clock** - zegar z kalendarzem
- **network** - status sieci
- **memory** - użycie RAM
- **cpu** - użycie CPU
- **pulseaudio** - głośność systemu
- **pulseaudio#microphone** - głośność mikrofonu
- **battery** - status baterii
- **tray** - system tray
- **custom/power_btn** - przycisk zasilania

### Dodatkowe (z extra-modules.jsonc)
- **custom/spotify** - kontroler Spotify
- **custom/disk** - użycie dysku
- **custom/uptime** - czas pracy systemu
- **custom/backlight** - jasność ekranu
- **custom/bluetooth** - status Bluetooth
- **custom/vpn** - status VPN
- **custom/notification** - licznik powiadomień
- **custom/calendar** - data z kalendarzem
- **custom/email** - nieprzeczytane emaile
- **custom/temperature** - temperatura CPU
- **custom/gpu** - użycie GPU (NVIDIA)
- **custom/ram-usage** - szczegółowe użycie RAM
- **custom/swap-usage** - użycie swap

## 🔧 Troubleshooting

### Problem z ikonami
Jeśli ikony się nie wyświetlają, zainstaluj Nerd Fonts:
```bash
# Arch Linux
sudo pacman -S nerd-fonts-jetbrains-mono

# Lub pobierz z GitHub
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh JetBrainsMono
```

### Problem z pogodą
Sprawdź połączenie internetowe i dostępność serwisu wttr.in:
```bash
curl wttr.in/Warsaw?format=1
```

### Problem z audio
Upewnij się, że masz zainstalowany `pamixer`:
```bash
sudo pacman -S pamixer
```

## 🎨 Customization

### Zmiana miasta dla pogody
W `config.jsonc` znajdź sekcję `custom/weather` i zmień `Warsaw` na swoje miasto.

### Zmiana ikon workspace'ów
W sekcji `hyprland/workspaces` możesz zmienić ikony dla każdego workspace'a.

### Dodanie nowych aplikacji
W sekcji `hyprland/window` możesz dodać nowe reguły dla aplikacji.

## 📝 Licencja

Ta konfiguracja jest dostępna na licencji MIT. Możesz ją swobodnie modyfikować i rozpowszechniać.

## 🤝 Contributing

Jeśli masz sugestie lub chcesz dodać nowe funkcje, stwórz issue lub pull request.

---

**Uwaga**: Ta konfiguracja jest zoptymalizowana dla Hyprland, ale powinna działać również z innymi kompozytorami okien. 