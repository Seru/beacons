# Anleitung
Dies ist das Programm zu meiner Bachelorarbeit zum Thema "Nutzung von Bluetooth-Beacons zur Organisation von Bildungsräumen".
Das Repository ist erreichbar unter: https://github.com/Seru/beacons

## Projektstruktur
- `source`: Quelldateien des Projektes
- `build`: Enthält verpackten Server als tar.gz und die Androidanwendung als Package und in entpackter Form

## Installationsanleitung
Nachfolgend wird die Installationsanleitung für Client und Server erläutert

### Client
Zur Installation der build-Version die APK auf das Gerät kopieren und dort ausführen.
Sollte eine Meldung bezüglich unbekannter Quelle kommen, ist dieser Folge zu leisten und das Installieren aus unbekannter Quelle zu erlauben.

### Server
Der Meteor-Server wird derzeit auf einem Web-Server gehostet unter der IP 109.73.50.66:4000
Selbsthosten des Servers funktioniert wie folgt:
- Installieren von Meteor auf dem Server: https://www.meteor.com/install
- `git clone https://github.com/Seru/beacons.git` ausführen
- Ins Verzeichnis `beacons` wechseln
- `meteor` ausführen
