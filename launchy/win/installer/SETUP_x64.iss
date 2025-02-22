; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName      "Launchy"
#define MyAppPublisher "OpenNingia"
#define MyAppURL       "http://openningia.github.com/Launchy/"
#define MyAppExeName   "Launchy.exe"
#define MyAppUrlName   "Launchy.url"

#if !Defined(PWD)
#define PWD "..\.."
#endif

[Setup]
AppMutex=LaunchyMutex,Global\LaunchyMutex
AppName={#MyAppName}
AppVerName={#MyAppName} {%APPVEYOR_BUILD_VERSION|3.0.0}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={code:DefaultInstallDirectory}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=..\..\license.txt
OutputDir=Release\
OutputBaseFilename=Launchy_Setup_x64
SetupIconFile=..\Launchy.ico
Compression=lzma
SolidCompression=true
ShowLanguageDialog=yes
AppID=Launchy_21344213
CreateUninstallRegKey=not IsPortable
UninstallDisplayIcon={app}\{#MyAppExeName}
PrivilegesRequired=none
WizardSmallImageFile=header.bmp
AllowNoIcons=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Check: not IsPortable
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0, 6.1; Check: not IsPortable
Name: iconscurrentuser; Description: {cm:IconsCurrentUser}; GroupDescription: {cm:CreateIconsFor}; Flags: exclusive; Check: not IsRegularUser And not IsPortable
Name: iconscommon; Description: {cm:IconsAllUsers}; GroupDescription: {cm:CreateIconsFor}; Flags: exclusive unchecked; Check: not IsRegularUser And not IsPortable

[InstallDelete]
Type: filesandordirs; Name: {app}\skins\Black Glass
Type: filesandordirs; Name: {app}\skins\Default
Type: filesandordirs; Name: {app}\skins\Mercury
Type: filesandordirs; Name: {app}\skins\Note
Type: filesandordirs; Name: {app}\skins\Quicksilver2
Type: filesandordirs; Name: {app}\skins\Spotlight Wide

[Files]
Source: {#PWD}\release\{#MyAppExeName}; DestDir: {app}; Flags: ignoreversion
Source: LaunchyPortable.ini; DestDir: {app}; DestName: Launchy.ini; Flags: onlyifdoesntexist; Check: IsPortable

Source: "{#PWD}\release\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#PWD}\release\styles\*.dll"; DestDir: "{app}\styles"; Flags: ignoreversion
Source: "{#PWD}\release\iconengines\*.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "{#PWD}\release\imageformats\*.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "{#PWD}\release\platforms\*.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#PWD}\release\translations\*.qm"; DestDir: "{app}\tr"; Flags: ignoreversion

; Translations
Source: {#PWD}\translations\launchy_es.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_de.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_ja.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_zh.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_nl.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_rus.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_zh_TW.qm; DestDir: {app}\tr\; Flags: ignoreversion
Source: {#PWD}\translations\launchy_it_IT.qm; DestDir: {app}\tr\; Flags: ignoreversion

; Plugins
; plugins may require all 3 runtimes
; Source: "{#PWD}\release\plugins\*.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion

; Plugin icons
; Source: {#PWD}\plugins\controly\*.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion
; Source: {#PWD}\plugins\calcy\*.png; DestDir: {app}\plugins\icons\; Flags: ignoreversion

; Documentation
Source: {#PWD}\license.txt; DestDir: {app}; Flags: ignoreversion

; Skins
Source: {#PWD}\skins\Mercury\*.*; DestDir: {app}\skins\Mercury\; Flags: ignoreversion
Source: {#PWD}\skins\Quicksilver2\*.*; DestDir: {app}\skins\Quicksilver2\; Flags: ignoreversion
Source: {#PWD}\skins\Note\*.*; DestDir: {app}\skins\Note\; Flags: ignoreversion
Source: {#PWD}\skins\Black_Glass\*.*; DestDir: {app}\skins\Black Glass\; Flags: ignoreversion
Source: {#PWD}\skins\Spotlight_Wide\*.*; DestDir: {app}\skins\Spotlight Wide\; Flags: ignoreversion
Source: {#PWD}\skins\Flat Modern Dark\*.*; DestDir: {app}\skins\Flat Modern Dark\; Flags: ignoreversion
Source: {#PWD}\skins\Flat Modern Light\*.*; DestDir: {app}\skins\Flat Modern Light\; Flags: ignoreversion

Source: ..\Utilities\Special Folders\C Drive.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\Control Panel.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Computer.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Documents.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Music.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Network Places.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\My Pictures.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\Special Folders\Recycle Bin.lnk; DestDir: {app}\Utilities\Special Folders\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Logoff.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Reboot.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Shutdown.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion
Source: ..\Utilities\System Power\System Hibernate.lnk; DestDir: {app}\Utilities\System Power\; Flags: ignoreversion

[INI]
Filename: {app}\{#MyAppUrlName}; Section: InternetShortcut; Key: URL; String: {#MyAppURL}

[Icons]
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Parameters: /show
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {app}\{#MyAppUrlName}
Name: {code:UserOrCommonDirectory|programs}\{groupname}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {code:UserOrCommonDirectory|startup}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}
Name: {code:UserOrCommonDirectory|programs}\{groupname}\Launchy Rescue Mode; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Parameters: /rescue

Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Parameters: /show; WorkingDir: {app}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Parameters: /show; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Tasks: quicklaunchicon

[Run]
; Flat Modern Dark is the new Default skin
Filename: "{cmd}"; Parameters: "/C mklink /D ""{app}\skins\Default\"" ""{app}\skins\Flat Modern Dark\"""
Filename: {app}\{#MyAppExeName}; Parameters: /show; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent runasoriginaluser

[UninstallDelete]
Type: files; Name: {app}\{#MyAppUrlName}

[CustomMessages]
CreateIconsFor=Create start menu and desktop icons for:
IconsCurrentUser=The current user only
IconsAllUsers=All users

[Code]
var
  PortablePage: TInputOptionWizardPage;

function IsRegularUser(): Boolean;
begin
  Result := not (IsAdminLoggedOn or IsPowerUserLoggedOn);
end;

function IsPortable(): Boolean;
begin
  if PortablePage = nil then
    Result := false
  else
    Result := PortablePage.Values[1];
end;

function DefaultInstallDirectory(Param: String): String;
begin
  if IsPortable then
    Result := ExpandConstant('{drive:{srcexe}}')
  else if IsRegularUser then
    Result := ExpandConstant('{localappdata}')
  else
    Result := ExpandConstant('{pf}');
  Result := Result + '\{#MyAppName}';
end;

function UserOrCommonDirectory(Param: String): String;
begin
  if IsTaskSelected('iconscommon') then
    Result := ExpandConstant('{common' + Param + '}')
  else
    Result := ExpandConstant('{user' + Param + '}')
end;

procedure InitializeWizard;
begin
  PortablePage := CreateInputOptionPage(wpLicense,
    'Installation Type', 'How should Launchy be installed?',
    'Launchy can run as an installed application or in portable mode. Please select your preferred mode',
    True, False);
  PortablePage.Add('Normal');
  PortablePage.Add('Portable');
  PortablePage.Values[0] := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if (CurPageID = PortablePage.ID) then
  begin
    WizardForm.DirEdit.Text := DefaultInstallDirectory('');
    WizardForm.NoIconsCheck.Checked := IsPortable;
  end;
  Result := true;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if (PageID = wpSelectProgramGroup) and IsPortable then
  begin
      WizardForm.NoIconsCheck.Checked := true;
      Result := true;
  end;
end;

#IFDEF UNICODE
  #DEFINE AW "W"
#ELSE
  #DEFINE AW "A"
#ENDIF
type
  INSTALLSTATE = Longint;
const
  INSTALLSTATE_INVALIDARG = -2;  // An invalid parameter was passed to the function.
  INSTALLSTATE_UNKNOWN = -1;     // The product is neither advertised or installed.
  INSTALLSTATE_ADVERTISED = 1;   // The product is advertised but not installed.
  INSTALLSTATE_ABSENT = 2;       // The product is installed for a different user.
  INSTALLSTATE_DEFAULT = 5;      // The product is installed for the current user.

function MsiQueryProductState(szProduct: string): INSTALLSTATE; 
  external 'MsiQueryProductState{#AW}@msi.dll stdcall';

function VCVersionInstalled(const ProductID: string): Boolean;
begin
  Result := MsiQueryProductState(ProductID) = INSTALLSTATE_DEFAULT;
end;

