# Microsoft Developer Studio Project File - Name="appAllBulletDemos" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=appAllBulletDemos - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "appAllBulletDemos.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "appAllBulletDemos.mak" CFG="appAllBulletDemos - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "appAllBulletDemos - Win32 DebugDoublePrecision" (based on "Win32 (x86) Console Application")
!MESSAGE "appAllBulletDemos - Win32 DebugDll" (based on "Win32 (x86) Console Application")
!MESSAGE "appAllBulletDemos - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "appAllBulletDemos - Win32 ReleaseDoublePrecision" (based on "Win32 (x86) Console Application")
!MESSAGE "appAllBulletDemos - Win32 ReleaseDll" (based on "Win32 (x86) Console Application")
!MESSAGE "appAllBulletDemos - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "appAllBulletDemos - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "release"
# PROP BASE Intermediate_Dir "release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\out\release6\build\appAllBulletDemos\"
# PROP Intermediate_Dir "..\..\out\release6\build\appAllBulletDemos\"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /vmb /vms /W3 /Gm /G5 /D "WIN32" /FD /c
# ADD CPP /nologo /vmb /vms /W3 /Gm /G5 /FD /c /Gy /GF /MD /Ob2 /Zm1000 /Og /Oi /Ot /Oy /D "_MT" /D "_MBCS" /D "NDEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "WIN32"  /I "." /I "..\.." /I "..\..\src" /I "..\..\Glut" /I "..\..\Extras" /I "..\..\Extras\ConvexHull" /I "..\..\Demos\OpenGL" /I "..\..\Extras\ConvexDecomposition" /I "..\..\Extras\GIMPACTUtils"
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32 /D "NDEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE"
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /fo".\..\..\out\release6\build\appAllBulletDemos\appAllBulletDemos.res" /i "." /i "..\.." /i "..\..\src" /i "..\..\Glut" /i "..\..\Extras" /i "..\..\Extras\ConvexHull" /i "..\..\Demos\OpenGL" /i "..\..\Extras\ConvexDecomposition" /i "..\..\Extras\GIMPACTUtils"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib /nologo /machine:I386
# ADD LINK32 shell32.lib user32.lib gdi32.lib advapi32.lib glut32.lib  /nologo /version:4.0 /machine:I386 /OPT:NOREF /out:"..\..\AllBulletDemos.exe" /subsystem:console /libpath:"..\..\Glut" 

!ELSEIF  "$(CFG)" == "appAllBulletDemos - Win32 ReleaseDll"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 
# PROP BASE Output_Dir "release_dll"
# PROP BASE Intermediate_Dir "release_dll"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 
# PROP Output_Dir "..\..\out\release_dll6\build\appAllBulletDemos\"
# PROP Intermediate_Dir "..\..\out\release_dll6\build\appAllBulletDemos\"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /vmb /vms /W3 /Gm /G5 /D "WIN32" /FD /c
# ADD CPP /nologo /vmb /vms /W3 /Gm /G5 /FD /c  /D "_MT" /D "_MBCS" /D "NDEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "WIN32"  /I "." /I "..\.." /I "..\..\src" /I "..\..\Glut" /I "..\..\Extras" /I "..\..\Extras\ConvexHull" /I "..\..\Demos\OpenGL" /I "..\..\Extras\ConvexDecomposition" /I "..\..\Extras\GIMPACTUtils"
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32 /D "NDEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE"
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /fo".\..\..\out\release_dll6\build\appAllBulletDemos\appAllBulletDemos.res" /i "." /i "..\.." /i "..\..\src" /i "..\..\Glut" /i "..\..\Extras" /i "..\..\Extras\ConvexHull" /i "..\..\Demos\OpenGL" /i "..\..\Extras\ConvexDecomposition" /i "..\..\Extras\GIMPACTUtils"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib /nologo /machine:I386
# ADD LINK32 shell32.lib user32.lib gdi32.lib advapi32.lib glut32.lib  /nologo /version:4.0 /machine:I386  /out:"..\..\AllBulletDemos.exe" /subsystem:console /libpath:"..\..\Glut" 

!ELSEIF  "$(CFG)" == "appAllBulletDemos - Win32 ReleaseDoublePrecision"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 
# PROP BASE Output_Dir "release_dbl"
# PROP BASE Intermediate_Dir "release_dbl"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 
# PROP Output_Dir "..\..\out\release_dbl6\build\appAllBulletDemos\"
# PROP Intermediate_Dir "..\..\out\release_dbl6\build\appAllBulletDemos\"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /vmb /vms /W3 /Gm /G5 /D "WIN32" /FD /c
# ADD CPP /nologo /vmb /vms /W3 /Gm /G5 /FD /c  /D "_MT" /D "_MBCS" /D "NDEBUG" /D "BT_USE_DOUBLE_PRECISION" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "WIN32"  /I "." /I "..\.." /I "..\..\src" /I "..\..\Glut" /I "..\..\Extras" /I "..\..\Extras\ConvexHull" /I "..\..\Demos\OpenGL" /I "..\..\Extras\ConvexDecomposition" /I "..\..\Extras\GIMPACTUtils"
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32 /D "NDEBUG" /D "BT_USE_DOUBLE_PRECISION" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE"
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /fo".\..\..\out\release_dbl6\build\appAllBulletDemos\appAllBulletDemos.res" /i "." /i "..\.." /i "..\..\src" /i "..\..\Glut" /i "..\..\Extras" /i "..\..\Extras\ConvexHull" /i "..\..\Demos\OpenGL" /i "..\..\Extras\ConvexDecomposition" /i "..\..\Extras\GIMPACTUtils"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib /nologo /machine:I386
# ADD LINK32 shell32.lib user32.lib gdi32.lib advapi32.lib glut32.lib  /nologo /version:4.0 /machine:I386  /out:"..\..\AllBulletDemos.exe" /subsystem:console /libpath:"..\..\Glut" 

!ELSEIF  "$(CFG)" == "appAllBulletDemos - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "debug"
# PROP BASE Intermediate_Dir "debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\out\debug6\build\appAllBulletDemos\"
# PROP Intermediate_Dir "..\..\out\debug6\build\appAllBulletDemos\"
# PROP Ignore_Export_Lib 1
# PROP Target_Dir ""
# ADD BASE CPP /nologo /vmb /vms /W3 /Gm /G5 /D "WIN32" /FD /c
# ADD CPP /nologo /vmb /vms /W3 /Gm /G5 /FD /c /GR /MDd /Zm1000 /ZI /Od /D "_MT" /D "_MBCS" /D "_DEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "WIN32"  /I "." /I "..\.." /I "..\..\src" /I "..\..\Glut" /I "..\..\Extras" /I "..\..\Extras\ConvexHull" /I "..\..\Demos\OpenGL" /I "..\..\Extras\ConvexDecomposition" /I "..\..\Extras\GIMPACTUtils"
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32 /D "_DEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE"
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /fo".\..\..\out\debug6\build\appAllBulletDemos\appAllBulletDemos.res" /i "." /i "..\.." /i "..\..\src" /i "..\..\Glut" /i "..\..\Extras" /i "..\..\Extras\ConvexHull" /i "..\..\Demos\OpenGL" /i "..\..\Extras\ConvexDecomposition" /i "..\..\Extras\GIMPACTUtils"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib /nologo /machine:I386
# ADD LINK32 shell32.lib user32.lib gdi32.lib advapi32.lib glut32.lib  /nologo /version:4.0 /machine:I386 /debug /pdbtype:sept /out:"..\..\AllBulletDemos.exe" /subsystem:console /libpath:"..\..\Glut" 

!ELSEIF  "$(CFG)" == "appAllBulletDemos - Win32 DebugDll"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 
# PROP BASE Output_Dir "debug_dll"
# PROP BASE Intermediate_Dir "debug_dll"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 
# PROP Output_Dir "..\..\out\debug_dll6\build\appAllBulletDemos\"
# PROP Intermediate_Dir "..\..\out\debug_dll6\build\appAllBulletDemos\"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /vmb /vms /W3 /Gm /G5 /D "WIN32" /FD /c
# ADD CPP /nologo /vmb /vms /W3 /Gm /G5 /FD /c  /D "_MT" /D "_MBCS" /D "_DEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "WIN32"  /I "." /I "..\.." /I "..\..\src" /I "..\..\Glut" /I "..\..\Extras" /I "..\..\Extras\ConvexHull" /I "..\..\Demos\OpenGL" /I "..\..\Extras\ConvexDecomposition" /I "..\..\Extras\GIMPACTUtils"
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32 /D "_DEBUG" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE"
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /fo".\..\..\out\debug_dll6\build\appAllBulletDemos\appAllBulletDemos.res" /i "." /i "..\.." /i "..\..\src" /i "..\..\Glut" /i "..\..\Extras" /i "..\..\Extras\ConvexHull" /i "..\..\Demos\OpenGL" /i "..\..\Extras\ConvexDecomposition" /i "..\..\Extras\GIMPACTUtils"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib /nologo /machine:I386
# ADD LINK32 shell32.lib user32.lib gdi32.lib advapi32.lib glut32.lib  /nologo /version:4.0 /machine:I386  /out:"..\..\AllBulletDemos.exe" /subsystem:console /libpath:"..\..\Glut" 

!ELSEIF  "$(CFG)" == "appAllBulletDemos - Win32 DebugDoublePrecision"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 
# PROP BASE Output_Dir "debug_dbl"
# PROP BASE Intermediate_Dir "debug_dbl"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 
# PROP Output_Dir "..\..\out\debug_dbl6\build\appAllBulletDemos\"
# PROP Intermediate_Dir "..\..\out\debug_dbl6\build\appAllBulletDemos\"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /vmb /vms /W3 /Gm /G5 /D "WIN32" /FD /c
# ADD CPP /nologo /vmb /vms /W3 /Gm /G5 /FD /c  /D "_MT" /D "_MBCS" /D "_DEBUG" /D "BT_USE_DOUBLE_PRECISION" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "WIN32"  /I "." /I "..\.." /I "..\..\src" /I "..\..\Glut" /I "..\..\Extras" /I "..\..\Extras\ConvexHull" /I "..\..\Demos\OpenGL" /I "..\..\Extras\ConvexDecomposition" /I "..\..\Extras\GIMPACTUtils"
# ADD BASE MTL /nologo /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /mktyplib203 /o "NUL" /win32 /D "_DEBUG" /D "BT_USE_DOUBLE_PRECISION" /D "_CONSOLE" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE"
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /fo".\..\..\out\debug_dbl6\build\appAllBulletDemos\appAllBulletDemos.res" /i "." /i "..\.." /i "..\..\src" /i "..\..\Glut" /i "..\..\Extras" /i "..\..\Extras\ConvexHull" /i "..\..\Demos\OpenGL" /i "..\..\Extras\ConvexDecomposition" /i "..\..\Extras\GIMPACTUtils"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib /nologo /machine:I386
# ADD LINK32 shell32.lib user32.lib gdi32.lib advapi32.lib glut32.lib  /nologo /version:4.0 /machine:I386  /out:"..\..\AllBulletDemos.exe" /subsystem:console /libpath:"..\..\Glut" 

!ENDIF 

# Begin Target

# Name "appAllBulletDemos - Win32 Release"
# Name "appAllBulletDemos - Win32 ReleaseDll"
# Name "appAllBulletDemos - Win32 ReleaseDoublePrecision"
# Name "appAllBulletDemos - Win32 Debug"
# Name "appAllBulletDemos - Win32 DebugDll"
# Name "appAllBulletDemos - Win32 DebugDoublePrecision"
# Begin Group "Source Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\BasicDemo\BasicDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\BspDemo\BspConverter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\BspDemo\BspDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\BspDemo\BspLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\CcdPhysicsDemo\CcdPhysicsDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\ConcaveConvexcastDemo\ConcaveConvexcastDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\ConcaveDemo\ConcavePhysicsDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\ConcaveRaycastDemo\ConcaveRaycastDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\ConstraintDemo\ConstraintDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\ConvexDecompositionDemo\ConvexDecompositionDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\DynamicControlDemo\MotorDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\ForkLiftDemo\ForkLiftDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\GimpactTestDemo\GimpactTestDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\GjkConvexCastDemo\LinearConvexCastDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\RagdollDemo\RagdollDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\Raytracer\Raytracer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\SliderConstraintDemo\SliderConstraintDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\..\SoftDemo\SoftDemo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\DemoEntries.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\Main.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\Demos\AllBulletDemos\DemoEntries.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\msvc\appAllBulletDemos.rc
# End Source File
# End Group
# End Target
# End Project
