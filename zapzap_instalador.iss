[Setup]
AppName=ZapZap
AppVersion=7.4.4
AppVerName=ZapZap 7.4.4
AppPublisher=RAMS Software
AppPublisherURL=https://github.com
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={autopf}\ZapZap
DefaultGroupName=ZapZap
UninstallDisplayIcon={app}\zapzap.ico
Compression=lzma2
SolidCompression=yes
OutputDir=Output
OutputBaseFilename=ZapZap-7.4.4-win-x86_64-installer
SetupIconFile=zapzap.ico
CloseApplications=yes
CloseApplicationsFilter=ZapZap.exe

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"

[Files]
Source: "dist\ZapZap\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "zapzap.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\ZapZap"; Filename: "{app}\ZapZap.exe"; IconFilename: "{app}\zapzap.ico"
Name: "{autodesktop}\ZapZap"; Filename: "{app}\ZapZap.exe"; Tasks: desktopicon; IconFilename: "{app}\zapzap.ico"

[Tasks]
Name: "desktopicon"; Description: "Crear un acceso directo en el escritorio"; GroupDescription: "Iconos adicionales:"

[Run]
Description: "Lanzar ZapZap ahora"; Filename: "{app}\ZapZap.exe"; Flags: nowait postinstall skipifsilent
