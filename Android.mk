LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libsocat
LOCAL_CPP_FEATURES += exceptions
LOCAL_CPPFLAGS += -fexceptions -std=c++14 
APP_CPPFLAGS := -std=c++14
APP_CPPFLAGS += -fexceptions
APP_STL := c++_shared

LOCAL_CFLAGS += -Wno-error=date-time 

LOCAL_MODULE_TAGS := eng

FILE_LIST := $(wildcard $(LOCAL_PATH)/xio-tcpwrap.c \
				$(LOCAL_PATH)/xio-ext2.c \
				$(LOCAL_PATH)/xiosigchld.c \
				$(LOCAL_PATH)/xiowrite.c \
				$(LOCAL_PATH)/sslcls.c \
				$(LOCAL_PATH)/xioexit.c \
				$(LOCAL_PATH)/xio-named.c \
				$(LOCAL_PATH)/xio-ascii.c \
				$(LOCAL_PATH)/snprinterr.c \
				$(LOCAL_PATH)/xio-ip.c \
				$(LOCAL_PATH)/xio-process.c \
				$(LOCAL_PATH)/xio-stdio.c \
				$(LOCAL_PATH)/xio-ipapp.c \
				$(LOCAL_PATH)/sysutils.c \
				$(LOCAL_PATH)/xio-socks.c \
				$(LOCAL_PATH)/xio-readline.c \
				$(LOCAL_PATH)/xio-tun.c \
				$(LOCAL_PATH)/error.c \
				$(LOCAL_PATH)/dalan.c \
				$(LOCAL_PATH)/xio-rawip.c \
				$(LOCAL_PATH)/xio-creat.c \
				$(LOCAL_PATH)/xio-fdnum.c \
				$(LOCAL_PATH)/xiosignal.c \
				$(LOCAL_PATH)/xio-unix.c \
				$(LOCAL_PATH)/vsnprintf_r.c \
				$(LOCAL_PATH)/xio-termios.c \
				$(LOCAL_PATH)/xioshutdown.c \
				$(LOCAL_PATH)/xio-gopen.c \
				$(LOCAL_PATH)/xio-listen.c \
				$(LOCAL_PATH)/sycls.c \
				$(LOCAL_PATH)/xio-ip6.c \
				$(LOCAL_PATH)/xio-fd.c \
				$(LOCAL_PATH)/hostan.c \
				$(LOCAL_PATH)/nestlex.c \
				$(LOCAL_PATH)/xio-interface.c \
				$(LOCAL_PATH)/xio-socket.c \
				$(LOCAL_PATH)/socat.c \
				$(LOCAL_PATH)/xioparam.c \
				$(LOCAL_PATH)/xio-udp.c \
				$(LOCAL_PATH)/xio-system.c \
				$(LOCAL_PATH)/xio-proxy.c \
				$(LOCAL_PATH)/xio-tcp.c \
				$(LOCAL_PATH)/xiolayer.c \
				$(LOCAL_PATH)/xioopts.c \
				$(LOCAL_PATH)/xio-streams.c \
				$(LOCAL_PATH)/xio-pipe.c \
				$(LOCAL_PATH)/xioopen.c \
				$(LOCAL_PATH)/xiolockfile.c \
				$(LOCAL_PATH)/xio-openssl.c \
				$(LOCAL_PATH)/xio-progcall.c \
				$(LOCAL_PATH)/xiodiag.c \
				$(LOCAL_PATH)/xio-exec.c \
				$(LOCAL_PATH)/utils.c \
				$(LOCAL_PATH)/xio-file.c \
				$(LOCAL_PATH)/xio-ip4.c \
				$(LOCAL_PATH)/fdname.c \
				$(LOCAL_PATH)/xioinitialize.c \
				$(LOCAL_PATH)/xiohelp.c \
				$(LOCAL_PATH)/xioread.c \
				$(LOCAL_PATH)/xioclose.c \
				$(LOCAL_PATH)/xio-pty.c \
				$(LOCAL_PATH)/xio-sctp.c \
				$(LOCAL_PATH)/filan.c \
				$(LOCAL_PATH)/openpty.c)
	
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_EXECUTABLE)
