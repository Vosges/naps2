; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVersion "1.0b1"

[Setup]
AppName=NAPS2 (Not Another PDF Scanner 2)
AppVerName=NAPS2 {#AppVersion}
AppPublisher=Ben Olden-Cooligan
AppPublisherURL=http://www.sourceforge.net/projects/naps2
AppSupportURL=http://www.sourceforge.net/projects/naps2
AppUpdatesURL=http://www.sourceforge.net/projects/naps2
DefaultDirName={pf}\NAPS2
DefaultGroupName=NAPS2
OutputDir=../publish
OutputBaseFilename=naps2-setup-{#AppVersion}
Compression=lzma
SolidCompression=yes

LicenseFile=license.txt     
UninstallDisplayIcon={app}\scanner-app.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\Release\NAPS2.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\PdfSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\Interop.WIA.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\Ninject.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Resources\scanner-app.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\wiaaut.dll"; DestDir: "{sys}"; Flags: regserver

[Icons]
Name: "{group}\NAPS2"; Filename: "{app}\NAPS2.exe"
Name: "{commondesktop}\NAPS2"; Filename: "{app}\NAPS2.exe"; Tasks: desktopicon

