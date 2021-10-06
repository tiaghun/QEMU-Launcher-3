--
--  AppDelegate.applescript
--  QEMU Launcher 3
--
--  Created by Alison on 16/05/20.
--  Copyright © 2020 Alison E.E. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
    
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
    end applicationWillFinishLaunching_
	
    -- IBActions
    
      -- System
      
        -- Architecture
        on setArch_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set CPUBit to (ResourcePath & "Launcher3.bundle/CurrentSettings/CPU")
          choose from list {"Alpha", "ARM", "ARM64", "CRIS", "i386", "LatticeMico32", "M68k", "MicroBlaze", "MicroBlazeEL", "MIPS", "MIPS64", "MIPSEL", "MIPSEL64", "Moxie", "OpenRISC32", "PowerPC", "PowerPC64", "PowerPC EMB", "S390X", "SH4", "SH4 EB", "SPARC", "SPARC64", "Unicore32", "x86-64", "Xbox", "Xtensa"} with prompt "Choose CPU architecture to use:" with title "Set Architecture" OK button name "Set" cancel button name "Cancel"
          if result is equal to false then
              error number -128
          else
              set choice to result as string
              do shell script ("printf '' > ") & quoted form of CPUBit
              write choice to CPUBit
          end if
        end setArch_
        -- End Architecture
        
        -- Random Access Memory
        on setRAM_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set RAMBit to (ResourcePath & "Launcher3.bundle/CurrentSettings/RAM")
          choose from list {"64 KB","128 KB", "256 KB", "512 KB", "1 MB", "2 MB", "4 MB", "8 MB", "16 MB", "32 MB", "64 MB", "128 MB", "256 MB", "512 MB", "1 GB", "2 GB", "4 GB", "6 GB", "8 GB", "16 GB"} with prompt "Choose RAM quantity to allocate:" with title "Set RAM" OK button name "Set" cancel button name "Cancel"
          if result is equal to false then
              error number -128
          else
              set choice to result as string
              do shell script ("printf '' > ") & quoted form of RAMBit
              write choice to RAMBit
          end if
        end setRAM_
        -- End Random Access Memory
        
        -- Networking Card
        on setNet_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set NETBit to (ResourcePath & "Launcher3.bundle/CurrentSettings/NET")
          choose from list {"NE2000 PCI", "E1000", "RTL8139", "PCNET", "Virtio"} with prompt "Choose networking card to emulate:" with title "Set Networking Card" OK button name "Set" cancel button name "Cancel"
          if result is equal to false then
              error number -128
          else
              set choice to result as string
              do shell script ("printf '' > ") & quoted form of NETBit
              write choice to NETBit
          end if
        end setNet_
        -- End Networking Card
        
      -- End System
    
      -- Storage
    
        -- Boot Device
        on setBoot_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set BOOTBit to (ResourcePath & "Launcher3.bundle/CurrentSettings/BOOT")
          choose from list {"Floppy Diskette Drive", "CDROM Drive", "Hard Disk Drive", "Network Drive"} with prompt "Choose primary boot device:" with title "Set Networking Card" OK button name "Set" cancel button name "Cancel"
          if result is equal to false then
              error number -128
          else
              set choice to result as string
              do shell script ("printf '' > ") & quoted form of BOOTBit
              write choice to BOOTBit
          end if
        end setBoot_
        -- End Boot Device
        
        -- Floppy Drive A
        on setFloppyA_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set FloppyABit to (ResourcePath & "Launcher3.bundle/CurrentSettings/FloppyA")
          set FloppyA to POSIX path of (choose file of type {"img","raw","dsk","fds"} with prompt "Select disk image for Floppy Diskette A")
          do shell script ("printf '' > ") & quoted form of FloppyABit
          write FloppyA to FloppyABit
        end setFloppyA_
        -- End Floppy Drive A
        
        -- Floppy Drive B
        on setFloppyB_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set FloppyBBit to (ResourcePath & "Launcher3.bundle/CurrentSettings/FloppyB")
          set FloppyB to POSIX path of (choose file of type {"img","raw","dsk","fds"} with prompt "Select disk image for Floppy Diskette B")
          do shell script ("printf '' > ") & quoted form of FloppyBBit
          write FloppyB to FloppyBBit
        end setFloppyB_
        -- End Floppy Drive B
        
        -- CDROM Drive
        on setCDROM_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set CDROMBit to (ResourcePath & "Launcher3.bundle/CurrentSettings/CDROM")
          set CDROM to POSIX path of (choose file of type {"iso","udf","cdr","dvd"} with prompt "Select disk image for CDROM")
          do shell script ("printf '' > ") & quoted form of CDROMBit
          write CDROM to CDROMBit
        end setCDROM_
        -- End CDROM Drive
        
        -- Hard Disk 0
        on setHDD0_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set HDD0Bit to (ResourcePath & "Launcher3.bundle/CurrentSettings/HDD0")
          set HDD0 to POSIX path of (choose file of type {"dmg","img","raw","hdd","dsk"} with prompt "Select disk image for Hard Disk 0")
          do shell script ("printf '' > ") & quoted form of HDD0Bit
          write HDD0 to HDD0Bit
        end setHDD0_
        -- End Hard Disk 0
        
        -- Hard Disk 1
        on setHDD1_(sender)
          set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
          set HDD1Bit to (ResourcePath & "Launcher3.bundle/CurrentSettings/HDD1")
          set HDD1 to POSIX path of (choose file of type {"dmg","img","raw","hdd","dsk"} with prompt "Select disk image for Hard Disk 1")
          do shell script ("printf '' > ") & quoted form of HDD1Bit
          write HDD1 to HDD1Bit
        end setHDD1_
        -- End Hard Disk 1
        
      -- End Storage
    
      -- Launch IMG Creator
      on launchIMGCreator_(sender)
        set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
        set AppPath to quoted form of ResourcePath & "IMGCreator.app/"
        do shell script ("open ") & AppPath
      end launchIMGCreator_
      -- End Launch IMG Creator
      
      -- Show Current Config
      on showCurrentConfig_(sender)
        set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
        set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/WriteSettingsList"
        do shell script ("") & ScriptPath
        set CurrentSettings to read (ResourcePath & "Launcher3.bundle/CurrentSettings/SettingsList")
        display dialog CurrentSettings with title "Current Settings" buttons {"Clear Config","Close"} default button "Close"
        if the button returned of the result is "Close" then
            error number -128
        else
            set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/ClearConfig"
            do shell script ("") & ScriptPath
            display dialog "Configuration cleared successfully." with title "Clear Current Config" with icon note buttons {"OK"} default button {"OK"}
        end if
      end showCurrentConfig_
      -- End Show Current Config
      
      -- Launch VM
      on launchVM_(sender)
        set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
        set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/BootVM"
        do shell script ("") & ScriptPath
      end launchVM_
      -- End Launch VM
      
      -- Save Profile
      on saveCurrentProfile_(sender)
        set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
        set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/SaveProfile"
        set NameFile to ResourcePath & "Launcher3.bundle/profileName"
        display dialog "Save Current Profile As..." default answer "" with title "Save Current Profile" buttons {"Cancel","Save"} default button {"Save"} cancel button "Cancel"
        set ProfName to the text returned of the result
        do shell script ("printf '' > ") & quoted form of NameFile
        write ProfName & ".qlp" to NameFile
        do shell script ("") & ScriptPath
        display dialog "Current config was successfully saved as: " & quoted form of ProfName with title "Profile Saved Successfully" with icon note buttons {"OK"} default button {"OK"}
      end saveCurrentProfile_
      -- End Save Profile
      
      -- Load Profile
      on loadExistingProfile_(sender)
        set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
        set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/LoadProfile"
        set NameFile to ResourcePath & "Launcher3.bundle/profileName"
        try
        choose from list of (list folder (ResourcePath as text) & "/Launcher3.bundle/Profiles/") with prompt "Choose Saved Profile To Load:" with title "Load Profile" OK button name "Load" cancel button name "Cancel"
           on error number -50
             display dialog "No profiles were found in app memory." with title "Load Profile" with icon caution buttons {"OK"} default button {"OK"}
        end try
        set choice to result as string
        if choice is equal to "false" then
          error -128
        end if
        do shell script ("printf '' > ") & quoted form of NameFile
        write choice to NameFile
        do shell script ("") & ScriptPath
        display dialog "The selected profile was loaded successfully: " & quoted form of choice with title "Profile Loaded Successfully" with icon note buttons {"OK"} default button {"OK"}
      end loadExistingProfile_
      -- End Load Profile
    
      -- Manage Profiles
      on manageProfiles_(sender)
      set ResourcePath to current application's NSBundle's mainBundle()'s bundlePath() as text & "/Contents/Resources/"
      set NameFile to ResourcePath & "Launcher3.bundle/profileName"
      display dialog "What would you like to do with your profiles?" with title "Manage Profiles" with icon note buttons {"Cancel","Import/Export","Delete Profiles"} default button {"Cancel"}
      if the button returned of the result is "Delete Profiles" then
        set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/DeleteProfiles"
        try
           choose from list of (list folder (ResourcePath as text) & "/Launcher3.bundle/Profiles/") with prompt "Choose Which Profile To Delete:" with title "Delete Profiles" OK button name "Delete" cancel button name "Cancel"
           on error number -50
             display dialog "No profiles were found in app memory." with title "Delete Profiles" with icon caution buttons {"OK"} default button {"OK"}
        end try
             set choice to result as string
             if choice is equal to "false" then
               error -128
             end if
             display dialog "Are you certain you want to delete this profile? This cannot be undone." with title "Delete Profiles" with icon caution buttons {"NO","YES"} default button {"NO"}
             if the button returned of the result is "YES" then
               do shell script ("printf '' > ") & quoted form of NameFile
               write choice to NameFile
               do shell script ("") & ScriptPath
               display dialog "The selected profile was deleted successfully: " & quoted form of choice with title "Profile Deleted Successfully" with icon note buttons {"OK"} default button {"OK"}
             end if
      else if the button returned of the result is "Import/Export" then
        display dialog "Import or Export Profiles?" with title "Import/Export" with icon note buttons {"Cancel","Import","Export"} default button {"Cancel"}
        if the button returned of the result is "Import" then
          set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/Import"
          do shell script ("printf '' > ") & quoted form of NameFile
          choose file of type {"qlp"} with prompt "Choose Profile To Import..."
          set choice to result as text
          write POSIX path of choice to NameFile
          do shell script ("") & ScriptPath
          display dialog "The selected profile was imported successfully: " & quoted form of POSIX path of choice with title "Import Profiles" with icon note buttons {"OK"} default button {"OK"}
        else if the button returned of the result is "Export" then
          set ScriptPath to quoted form of ResourcePath & "Launcher3.bundle/Export"
          set ExportDest to ResourcePath & "Launcher3.bundle/exportDestination"
          try
             choose from list of (list folder (ResourcePath as text) & "/Launcher3.bundle/Profiles/") with prompt "Choose Which Profile To Export:" with title "Export Profiles" OK button name "Export" cancel button name "Cancel"
             on error number -50
               display dialog "No profiles were found in app memory." with title "Export Profiles" with icon caution buttons {"OK"} default button {"OK"}
          end try
          set choice to result as string
          if choice is equal to "false" then
            error -128
          end if
          do shell script ("printf '' > ") & quoted form of NameFile
          write choice to NameFile
          set ExportedFile to choice
          choose folder with prompt "Choose Where To Export The Selected Profile:" & choice
          set choice to the result as text
          do shell script ("printf '' > ") & ExportDest
          write POSIX path of choice to ExportDest
          do shell script ("") & ScriptPath
          display dialog "The selected profile was exported successfully: " & POSIX path of choice & quoted form of ExportedFile with title "Export Profiles" with icon note buttons {"OK"} default button {"OK"}
        end if
      end if
      end manageProfiles_
      -- End Manage Profiles
    
    -- End IBActions

    
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script
