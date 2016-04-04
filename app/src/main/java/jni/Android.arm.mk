LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE:= avcodec-prebuilt-armeabi
LOCAL_SRC_FILES:= prebuilt/libavcodec.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= avdevice-prebuilt-armeabi
LOCAL_SRC_FILES:= prebuilt/libavdevice.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= avfilter-prebuilt-armeabi
LOCAL_SRC_FILES:= prebuilt/libavfilter.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= avformat-prebuilt-armeabi
LOCAL_SRC_FILES:= prebuilt/libavformat.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE :=  avutil-prebuilt-armeabi
LOCAL_SRC_FILES := prebuilt/libavutil.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swresample-prebuilt-armeabi
LOCAL_SRC_FILES := prebuilt/libswresample.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swscale-prebuilt-armeabi
LOCAL_SRC_FILES := prebuilt/libswscale.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libffmpegjni

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := com_muqing_android_ffmpeg_jni_example_FFmpegNativeHelper.c \
                   cmdutils.c \
                   ffmpeg_opt.c \
                   ffmpeg_filter.c

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog -lz

LOCAL_SHARED_LIBRARIES:= avcodec-prebuilt-armeabi \
                         avdevice-prebuilt-armeabi \
                         avfilter-prebuilt-armeabi \
                         avformat-prebuilt-armeabi \
                         avutil-prebuilt-armeabi \
                         swresample-prebuilt-armeabi \
                         swscale-prebuilt-armeabi

LOCAL_C_INCLUDES += -L$(SYSROOT)/usr/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_CFLAGS := -DUSE_ARM_CONFIG

include $(BUILD_SHARED_LIBRARY)



