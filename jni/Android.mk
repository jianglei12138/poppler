LOCAL_PATH := $(call my-dir)

COMMON_INCLUDES := \
	$(LOCAL_PATH)/poppler/include \
	$(LOCAL_PATH)/poppler/include/goo \
	$(LOCAL_PATH)/poppler/include/fofi \
	$(LOCAL_PATH)/poppler/include/poppler \
	$(LOCAL_PATH)/poppler/include/splash \

##############fofi################
include $(CLEAR_VARS)
LOCAL_MODULE    := fofi
LOCAL_C_INCLUDES += $(COMMON_INCLUDES)
	
LOCAL_SRC_FILES := \
	poppler/src/fofi/FoFiEncodings.cc  \
	poppler/src/fofi/FoFiTrueType.cc   \
	poppler/src/fofi/FoFiType1C.cc 	   \
	poppler/src/fofi/FoFiBase.cc  	   \
	poppler/src/fofi/FoFiIdentifier.cc \
	poppler/src/fofi/FoFiType1.cc
include $(BUILD_STATIC_LIBRARY)

##############goo################
include $(CLEAR_VARS)
LOCAL_MODULE    := goo
LOCAL_C_INCLUDES += $(COMMON_INCLUDES)
LOCAL_SRC_FILES := \
	poppler/src/goo/FixedPoint.cc   \
	poppler/src/goo/GooString.cc    \
	poppler/src/goo/JpegWriter.cc   \
	poppler/src/goo/TiffWriter.cc   \
	poppler/src/goo/gmempp.cc  		\
	poppler/src/goo/GooHash.cc      \
	poppler/src/goo/GooTimer.cc     \
	poppler/src/goo/NetPBMWriter.cc \
	poppler/src/goo/gfile.cc        \
	poppler/src/goo/grandom.cc 		\
	poppler/src/goo/GooList.cc      \
	poppler/src/goo/ImgWriter.cc    \
	poppler/src/goo/PNGWriter.cc    \
	poppler/src/goo/gmem.cc         \
	poppler/src/goo/gstrtod.cc
include $(BUILD_STATIC_LIBRARY)

##############splash################
include $(CLEAR_VARS)
LOCAL_MODULE    := splash
LOCAL_C_INCLUDES += $(COMMON_INCLUDES) \
	$(LOCAL_PATH)/fontconfig/include  \
	$(LOCAL_PATH)/freetype/include

LOCAL_SRC_FILES := \
	poppler/src/splash/Splash.cc 			\
	poppler/src/splash/SplashBitmap.cc  	\
	poppler/src/splash/SplashClip.cc 		\
	poppler/src/splash/SplashFont.cc 		\
	poppler/src/splash/SplashFontEngine.cc  \
	poppler/src/splash/SplashFontFile.cc 	\
	poppler/src/splash/SplashFontFileID.cc  \
	poppler/src/splash/SplashFTFont.cc 		\
	poppler/src/splash/SplashFTFontEngine.cc\
	poppler/src/splash/SplashFTFontFile.cc  \
	poppler/src/splash/SplashPath.cc 		\
	poppler/src/splash/SplashPattern.cc 	\
	poppler/src/splash/SplashScreen.cc 		\
	poppler/src/splash/SplashState.cc 		\
	poppler/src/splash/SplashT1Font.cc 		\
	poppler/src/splash/SplashT1FontEngine.cc\
	poppler/src/splash/SplashT1FontFile.cc  \
	poppler/src/splash/SplashXPath.cc 		\
	poppler/src/splash/SplashXPathScanner.cc 
include $(BUILD_STATIC_LIBRARY)


##############poppler################
include $(CLEAR_VARS)
LOCAL_MODULE    := poppler
LOCAL_C_INCLUDES += $(COMMON_INCLUDES) \
	$(LOCAL_PATH)/lcms2/include \
	$(LOCAL_PATH)/fontconfig/include 
LOCAL_SRC_FILES := \
	poppler/src/poppler/Annot.cc \
	poppler/src/poppler/JArithmeticDecoder.cc \
	poppler/src/poppler/PopplerCache.cc \
	poppler/src/poppler/Array.cc \
	poppler/src/poppler/JBIG2Stream.cc \
	poppler/src/poppler/PreScanOutputDev.cc \
	poppler/src/poppler/BuiltinFont.cc \
	poppler/src/poppler/JPXStream.cc \
	poppler/src/poppler/ProfileData.cc \
	poppler/src/poppler/BuiltinFontTables.cc \
	poppler/src/poppler/Lexer.cc \
	poppler/src/poppler/Rendition.cc \
	poppler/src/poppler/CMap.cc \
	poppler/src/poppler/Linearization.cc \
	poppler/src/poppler/SecurityHandler.cc \
	poppler/src/poppler/CachedFile.cc \
	poppler/src/poppler/Link.cc \
	poppler/src/poppler/SignatureInfo.cc \
	poppler/src/poppler/Catalog.cc \
	poppler/src/poppler/LocalPDFDocBuilder.cc \
	poppler/src/poppler/Sound.cc \
	poppler/src/poppler/CharCodeToUnicode.cc \
	poppler/src/poppler/MarkedContentOutputDev.cc \
	poppler/src/poppler/SplashOutputDev.cc \
	poppler/src/poppler/DateInfo.cc \
	poppler/src/poppler/Movie.cc \
	poppler/src/poppler/StdinCachedFile.cc \
	poppler/src/poppler/Decrypt.cc \
	poppler/src/poppler/NameToCharCode.cc \
	poppler/src/poppler/StdinPDFDocBuilder.cc \
	poppler/src/poppler/Dict.cc \
	poppler/src/poppler/Object.cc \
	poppler/src/poppler/Stream.cc \
	poppler/src/poppler/Error.cc \
	poppler/src/poppler/OptionalContent.cc \
	poppler/src/poppler/StructElement.cc \
	poppler/src/poppler/FileSpec.cc \
	poppler/src/poppler/Outline.cc \
	poppler/src/poppler/StructTreeRoot.cc \
	poppler/src/poppler/FlateEncoder.cc \
	poppler/src/poppler/OutputDev.cc \
	poppler/src/poppler/TextOutputDev.cc \
	poppler/src/poppler/FontEncodingTables.cc \
	poppler/src/poppler/PDFDoc.cc \
	poppler/src/poppler/UTF.cc \
	poppler/src/poppler/FontInfo.cc \
	poppler/src/poppler/PDFDocEncoding.cc \
	poppler/src/poppler/UnicodeMap.cc \
	poppler/src/poppler/Form.cc \
	poppler/src/poppler/PDFDocFactory.cc \
	poppler/src/poppler/UnicodeTypeTable.cc \
	poppler/src/poppler/Function.cc \
	poppler/src/poppler/PSOutputDev.cc \
	poppler/src/poppler/ViewerPreferences.cc \
	poppler/src/poppler/Gfx.cc \
	poppler/src/poppler/PSTokenizer.cc \
	poppler/src/poppler/XRef.cc \
	poppler/src/poppler/GfxFont.cc \
	poppler/src/poppler/Page.cc \
	poppler/src/poppler/XpdfPluginAPI.cc \
	poppler/src/poppler/GfxState.cc \
	poppler/src/poppler/PageLabelInfo.cc \
	poppler/src/poppler/GlobalParams.cc \
	poppler/src/poppler/PageTransition.cc \
	poppler/src/poppler/Hints.cc \
	poppler/src/poppler/Parser.cc \
	poppler/src/poppler/strtok_r.cpp

LOCAL_LDLIBS := -lz

LOCAL_STATIC_LIBRARIES := lcms2 freetype fontconfig goo fofi splash

include $(BUILD_SHARED_LIBRARY)

##############parseargs################
include $(CLEAR_VARS)
LOCAL_MODULE    := parseargs
LOCAL_C_INCLUDES += $(COMMON_INCLUDES)\
	$(LOCAL_PATH)/utils	
LOCAL_SRC_FILES := \
	utils/parseargs.cc
include $(BUILD_STATIC_LIBRARY)


##############pdfdetach################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdfdetach
LOCAL_C_INCLUDES += $(COMMON_INCLUDES)
LOCAL_SRC_FILES := \
	utils/pdfdetach.cc
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdffonts################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdffonts
LOCAL_C_INCLUDES += $(COMMON_INCLUDES)
LOCAL_SRC_FILES := \
	utils/pdffonts.cc
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdfimages################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdfimages
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) \
	utils/
LOCAL_SRC_FILES := \
	utils/pdfimages.cc \
	utils/ImageOutputDev.cc	\
	utils/JSInfo.cc
LOCAL_STATIC_LIBRARIES := parseargs goo
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdfinfo################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdfinfo
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) \
	utils/
LOCAL_SRC_FILES := \
	utils/pdfinfo.cc \
	utils/printencodings.cc	\
	utils/JSInfo.cc
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdftops################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdftops
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) 
LOCAL_SRC_FILES := \
	utils/pdftops.cc 
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdftotext################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdftotext
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) \
	utils/
LOCAL_SRC_FILES := \
	utils/pdftotext.cc \
	utils/printencodings.cc	
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdftohtml################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdftohtml
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) \
	utils/
LOCAL_SRC_FILES := \
	utils/pdftohtml.cc \
	utils/HtmlFonts.cc \
	utils/HtmlLinks.cc \
	utils/HtmlOutputDev.cc 
LOCAL_STATIC_LIBRARIES := parseargs goo
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdfseparate################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdfseparate
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) 
LOCAL_SRC_FILES := \
	utils/pdfseparate.cc 
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdfunite################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdfunite
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) 
LOCAL_SRC_FILES := \
	utils/pdfunite.cc 
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

##############pdftoppm################
include $(CLEAR_VARS)
LOCAL_MODULE    := pdftoppm
LOCAL_C_INCLUDES += \
	$(COMMON_INCLUDES) 
LOCAL_SRC_FILES := \
	utils/pdftoppm.cc 
LOCAL_STATIC_LIBRARIES := parseargs
LOCAL_SHARED_LIBRARIES := poppler
include $(BUILD_EXECUTABLE)

include $(LOCAL_PATH)/lcms2/Android.mk
include $(LOCAL_PATH)/../fontconfig/Android.mk
include $(LOCAL_PATH)/../freetype/Android.mk
