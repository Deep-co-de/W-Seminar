# Übersicht
- Installation
- Verwendung
- Vorbereitung
- Formalien


# Installation
## Linux
### Schritt 1
#### Ubuntu
```
sudo apt-get install docker
```
#### Arch
```
sudo pacman -Sy docker
```
### Schritt 2
```
cd ~/Documents 
# oder:
cd ~/Dokumente
git clone https://github.com/Deep-co-de/W-Seminar
sudo chmod +x ./build.sh
mkdir workdir/fonts
```

# Vorbereitung
- Schriften:  
    Da wir die Calibri-Schriftart verwenden sollen, welche unter einer komplizierten Lizenz verfügbar ist, mússen die rechtlich erworbenen Schriften in den Ordner `workdir/fonts` verschoben werden.  
    Sie fehlen in diesem Repository, da ich nicht glaube, dass ich sie hier verfügbar machen darf.
    Es werden die folgenden Dateien erwartet:
    ```
    calibri-bold-italic.ttf
    calibri-bold.ttf
    calibri-italic.ttf
    calibri-regular.ttf
    ```
    Man findet die Schriften zum Beispiel auf folgender Webseite: `https://de.bestfonts.pro/font/calibre`, jeder muss selber wissen, ob er die Schriften verwenden darf.
- Quellen:  
    Quellen sollten in dem Format, wie dem der Beispiele in die folgende Datei geschrieben werden.
    Von vielen Büchern/Artikeln kann man auch direkt eine .bib-Datei herunterladen.
    ```
    workdir/my-bibliography.bib
    ```
- Bilder:  
    Bilder können in beliebigen Ordnern mit beliebigen Namen in diesem Ordner gespeichert werden.
    ```
    workdir/images/
    ```
- Tabellen:  
    Tabellen sollten hier im .csv-Dateiformat, wie Bilder (s. o.) gespeichert werden.
    CSV-Dateien, kann man aus jedem gängigen Tabellenkalkulationsprogramm exportieren.
    ```
    workdir/tables/
    ```
- Text:  
    Text wird in die folgende Datei geschrieben:
    ```
    workdir/document.tex
    ```
    - Bilder:  
        Innerhalb des Textes können Bilder wie folgt eingefügt werden:
        ```
        \begin{figure}[!htb]
            \captionsetup{width=.8\linewidth}
            \includegraphics[width=.8\linewidth]{images/virtualization/application}
            \centering
            \caption{Anwendungsvirtualisierung}
            \label{fig:virt-app}
        \end{figure}\\
        ```
        Die Zeile `[width=.8\linewidth]` besagt, dass das Bild 80% der Zeilenbreite einnehmen soll und kann für schmale Bilder mit `[height=.3\linewidth]` ersetzt werden. Es sollten möglichst nur diese beiden Formate verwendet werden, um ein einheitliches Erscheinungsbild zu bekommen.

        Die Zeile `images/virtualization/application` gibt den Ort der Bilddatei ohne Endung an, dieser MUSS innerhalb von `workdir` sein!!!

        Die Zeile `Anwendungsvirtualisierung` sorgt für eine Bildunterschrift, nur hier sollte ein `\cite...inline` verwendet werden - so wird keine Fußnote erzeugt!

        Die Zeile `fig:virt-app` ist die ID der Tabelle und muss eindeutig sein!
    - Tabellen:  
        Innerhalb des Textes können Tabellen wie folgt eingefügt werden:
        ```
        \begin{table}
            \centering
                \csvreader[
                    separator=semicolon,
                    tabular=|l|c|c|c|r|,
                    table head=\hline \bfseries{} & \bfseries{Desktop-PC} & \bfseries{Thin Client} & \bfseries{T. C. + Serveranteil} & \bfseries{Differenz} \\\hline,
                    late after last line=\\\hline %
                ]{tables/co2-virtualisation.csv}{}{\csvlinetotablerow}
                \caption{Tabelle mit Daten aus: \citebookinline[131]{green-it}}
                \label{table:cont}
            \end{table}\\
        ```
        Die Zeile `separator=semicolon,` besagt, dass die Tabelle ein `;` als Trennzeichen verwendet, auch dies kann bei den Exporteinstellungen angepasst werden - ist aber die Standardeinstellung.

        Die Zeile `tabular=|l|c|c|c|r|,` muss angepasst werden!
        Dabei bedeutet `l`, dass diese Spalte linksbündig, `c`: zentriert oder `r` rechtsbündig sein soll.

        Die Zeile `table head=\hline \bfseries{} & \bfseries{Desktop-PC} & \bfseries{Thin Client} & \bfseries{T. C. + Serveranteil} & \bfseries{Differenz} \\\hline,` muss auch angepasst werden, da diese die Spaltenköpfe zusätlich zur CSV-Datei enthält.
        mit `\bfseries{SPALTENNAME}` erhält man einen fett gedruckten Spaltenkopf oder einen normalen mit `SPALTENNAME`.
        Spaltennamen müssen mit ` & ` getrennt werden, dabei sorgt ` & & ` für einen leeren Spaltennamen

        Die Zeile `tables/co2-virtualisation.csv` gibt den Ort der CSV-Datei an, dieser MUSS innerhalb von `workdir` sein!!!

        Die Zeile `Tabelle mit Daten aus: \citebookinline[131]{green-it}` sorgt für eine Bildunterschrift, nur hier sollte ein `\cite...inline` verwendet werden - so wird keine Fußnote erzeugt!

        Die Zeile `table:cont` ist die ID der Tabelle und muss eindeutig sein!
    - Zitieren:  
        Innerhalb des Textes kann wie folgt zitiert werden:
        ```
        \citebook[131]{green-it}
        ```
        Dabei ist `131` die Seitenzahl und `green-it` die ID, welche in `workdir/my-bibliography.bib` verwendet wurde.
    - Fußnoten:  
        Innerhalb des Textes:
        ```
        \footnote{Fußnoteninhalt}
        ```
    - Abkürzungen/Fachbegriffe:  
        Innerhalb des Textes:
        ```
        \gls{copy-on-write}
        ```
        Dabei ist `copy-on-write` die ID, welche in `workdir/my-abkuerzungen.tex` verwendet wurde.
    - Bild-/Tabellenbezug:  
        Innerhalb des Textes:
        ```
        \autoref{table:cont}
        ```
        Dabei ist `table:cont` die ID, welche in `\begin{figure}...` verwendet wurde.

# Verwendung
## Anleitung - Linux
```
cd ~/Documents/W-Seminararbeit
# oder:
cd ~/Dokumente/W-Seminararbeit
./build.sh
```
## Anleitung - Windows (WSL) [verlässlich]
Ich hab keine Ahnung irgendwie WSL installieren, dabei am besten Ubuntu auswählen.
Dann der Anleitung für Ubuntu/Linux folgen
## Anleitung - Windows [einfach]
Es gibt ein Programm TexStudio? Was man direkt installieren kann, aber ob dads alles kann - Keine Ahnung!

## Windows - Fazit
Am besten einen Linuxnutzer fragen!

# Formalien
Ich gehe von Folgenem aus:
- Buch `Farhadi, A., u. a., Buchtitel, o.O., 2016, S. 4.`
- Artikel/Online/InCollection 
    - `Shingledecker, R., Tiny Core Linux, 2023, http://tinycorelinux.net/downloads.html, abgerufen am: 21. 07. 2023.`
        - Ist das Jahr hier überhaupt notwendig?
    - `Farhadi, A., u. a., Artikeltitel, in: Collectiontitel, o.O., 2016, https://duckduckgo.com, abgerufen am: 26. 01. 2023, S. 4.`
- Collection/Buch `Frank Lampe (Ed.), Green-IT, Virtualisierung und Thin Clients, Wiesbaden, 2010, S. 131`
- Bilder `Bild nach <InlineZitat (wie oben)>`