#ifndef FBXFILESDK_COMPONENTS_KBASELIB_KAYDARADEF_H
#define FBXFILESDK_COMPONENTS_KBASELIB_KAYDARADEF_H

/**************************************************************************************

 Copyright � 2001 - 2008 Autodesk, Inc. and/or its licensors.
 All Rights Reserved.

 The coded instructions, statements, computer programs, and/or related material 
 (collectively the "Data") in these files contain unpublished information 
 proprietary to Autodesk, Inc. and/or its licensors, which is protected by 
 Canada and United States of America federal copyright law and by international 
 treaties. 
 
 The Data may not be disclosed or distributed to third parties, in whole or in
 part, without the prior written consent of Autodesk, Inc. ("Autodesk").

 THE DATA IS PROVIDED "AS IS" AND WITHOUT WARRANTY.
 ALL WARRANTIES ARE EXPRESSLY EXCLUDED AND DISCLAIMED. AUTODESK MAKES NO
 WARRANTY OF ANY KIND WITH RESPECT TO THE DATA, EXPRESS, IMPLIED OR ARISING
 BY CUSTOM OR TRADE USAGE, AND DISCLAIMS ANY IMPLIED WARRANTIES OF TITLE, 
 NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE OR USE. 
 WITHOUT LIMITING THE FOREGOING, AUTODESK DOES NOT WARRANT THAT THE OPERATION
 OF THE DATA WILL BE UNINTERRUPTED OR ERROR FREE. 
 
 IN NO EVENT SHALL AUTODESK, ITS AFFILIATES, PARENT COMPANIES, LICENSORS
 OR SUPPLIERS ("AUTODESK GROUP") BE LIABLE FOR ANY LOSSES, DAMAGES OR EXPENSES
 OF ANY KIND (INCLUDING WITHOUT LIMITATION PUNITIVE OR MULTIPLE DAMAGES OR OTHER
 SPECIAL, DIRECT, INDIRECT, EXEMPLARY, INCIDENTAL, LOSS OF PROFITS, REVENUE
 OR DATA, COST OF COVER OR CONSEQUENTIAL LOSSES OR DAMAGES OF ANY KIND),
 HOWEVER CAUSED, AND REGARDLESS OF THE THEORY OF LIABILITY, WHETHER DERIVED
 FROM CONTRACT, TORT (INCLUDING, BUT NOT LIMITED TO, NEGLIGENCE), OR OTHERWISE,
 ARISING OUT OF OR RELATING TO THE DATA OR ITS USE OR ANY OTHER PERFORMANCE,
 WHETHER OR NOT AUTODESK HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH LOSS
 OR DAMAGE. 

**************************************************************************************/


#include <fbxfilesdk/components/kbaselib/karch/arch.h>

#if defined(_MSC_VER) || (defined(__GNUC__) && defined(_WIN32))
    #if defined(KFBX_NODLL)
		#ifndef MB_FBXSDK
		#define KFBX_DLLIMPORT __declspec()
		#define KFBX_DLLEXPORT __declspec()
		#endif
    #else
		#ifndef MB_FBXSDK
		#define KFBX_DLLIMPORT __declspec(dllimport)
	    #define KFBX_DLLEXPORT __declspec(dllexport)
	    #endif
	#endif
	#define K_DLLNO_IMPORT_EXPORT __declspec()
#else 
	#define KFBX_DLLIMPORT
	#define KFBX_DLLEXPORT
	#define K_DLLNO_IMPORT_EXPORT
#endif

#endif // FBXFILESDK_COMPONENTS_KBASELIB_KAYDARADEF_H

