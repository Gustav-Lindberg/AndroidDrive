; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include                  "androiddrive-setup-languages.iss"
#define MyAppName         "AndroidDrive"
#define MyAppExeName      MyAppName + ".exe"
#define MyAppExePath      "C:\Users\glind\OneDrive\Documents\AndroidDrive\build-AndroidDrive\release"
#define MyDepenciesPath   "C:\Users\glind\OneDrive\Documents\AndroidDrive\dependencies"
#define MyAppVersion      GetVersionNumbersString(MyAppExePath + "\" + MyAppExeName)
#define MyAppURL          "https://github.com/GustavLindberg99/AndroidDrive"
#define MyAppOutputDir    "C:\Users\glind\OneDrive\Documents\AndroidDrive"
#define MyAppOutputExe    "AndroidDrive-setup"
#define MyAppLicenseFile  "C:\Users\glind\OneDrive\Documents\AndroidDrive\license.txt"
#define MyAppCompany      "Gustav Lindberg"
#define MyAppStartingYear "2021"
#define CurrentYear       GetDateTimeString('yyyy','','')

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C370AD59-EF9D-4DE1-B2F5-CD4D87123B11}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}

AppCopyright=(c) {#MyAppStartingYear}-{#CurrentYear} {#MyAppCompany}
AppPublisher={#MyAppCompany}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}

VersionInfoDescription={#MyAppName} installer
VersionInfoProductName={#MyAppName}
VersionInfoVersion={#MyAppVersion}

UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}

LicenseFile={#MyAppLicenseFile} 

ShowLanguageDialog=yes
UsePreviousLanguage=no
LanguageDetectionMethod=uilanguage

WizardStyle=modern

DefaultDirName={pf64}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir={#MyAppOutputDir}
OutputBaseFilename={#MyAppOutputExe}
Compression=lzma
SolidCompression=yes


[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#MyAppExePath}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyDepenciesPath}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
