LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL
FFMPEG_PATH := ../FFmpeg-Android/output/armeabi-v7a

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include $(LOCAL_PATH)/$(FFMPEG_PATH)/include

# Add your application source files here...
LOCAL_SRC_FILES := main.c

LOCAL_SHARED_LIBRARIES := SDL2 avformat avcodec avutil swresample

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
