# QEMU-Launcher-3
AppleScript/Objective-C based launcher for QEMU for use on macOS. Version 3 rewrite.
**NOTICE:** This app bundle has ImgCreator as a dependency, repository is located here: https://github.com/tiaghun/ImgCreator2
A precompiled copy of the ImgCreator app bundle is included in this repository for your convenience, however it was compiled with a target SDK of macOS 10.14, so you should test it to make sure it will run properly before compiling QEMU Launcher 3. In the event the included build of ImgCreator does not work simply download the source from the aforementioned URL, switch the target SDK in Xcode to the version of macOS you are building on, let Xcode make any suggested automated adjustments, and compile. Then drop the newly created ImgCreator bundle into the QEMU Launcher 3 folder, overwritting the included bundle, and proceed to compile QEMU Launcher 3 as normal.

*Addendum:* You may also need to set the target SDK for QL3 to your current macOS version before compiling, because the AppleScript/Obj-C/Cocoa combination can sometimes be picky about cross-compiling for different version of the macOS SDK.
