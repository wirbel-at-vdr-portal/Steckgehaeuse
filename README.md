Ein paar Dateien zu diesem Projekt im openscad format, weil ich nicht extra andere Software nutzen will:

* https://www.heise.de/ratgeber/Radio-Netzteil-oder-Messgeraet-Ein-modulares-Gehaeuse-im-Selbstbau-11332936.html
* https://github.com/MakeMagazinDE/Steckgehaeuse

Ein einfaches Gehaeuse aus dem 3D Drucker, dessen Teile skalierbar und modular sind.

![Image](Overview.png)

## Benutzung, hier am Bsp eines Gehäuses mit BxHxT = 100x50x60mm
1. Äußere Höhe festlegen, z.B. 50mm -> 4x Kante_5cm ausdrucken
2. Grundfläche festlegen, z.B. 60mm x 100mm -> 2x Boden_60x100 ausdrucken für Boden und Deckel
3. passendes Inlet für Boden und Deckel wählen, entsprechend 1. und 2. -> 2x Inlet_60x100 drucken
4. passendes Inlet für Front und Rückseite wählen -> 2x Inlet_front_back_50_100 drucken
5. passendes Inlet für Seitenwände wählen -> 2x Inlet_left_right_50_60 drucken
6. In die vier Kanten oben und unten Einschmelmuttern M3 einschmelzen und Gehäuse zusammen bauen.

