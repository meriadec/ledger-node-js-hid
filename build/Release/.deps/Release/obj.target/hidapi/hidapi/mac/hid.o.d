cmd_Release/obj.target/hidapi/hidapi/mac/hid.o := cc '-DNODE_GYP_MODULE_NAME=hidapi' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' -I/Users/lohek/.node-gyp/9.3.0/include/node -I/Users/lohek/.node-gyp/9.3.0/src -I/Users/lohek/.node-gyp/9.3.0/deps/uv/include -I/Users/lohek/.node-gyp/9.3.0/deps/v8/include -I/usr/include/libusb-1.0 -I../hidapi/hidapi  -Os -gdwarf-2 -mmacosx-version-min=10.7 -arch x86_64 -Wall -Wendif-labels -W -Wno-unused-parameter -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/hidapi/hidapi/mac/hid.o.d.raw   -c -o Release/obj.target/hidapi/hidapi/mac/hid.o ../hidapi/mac/hid.c
Release/obj.target/hidapi/hidapi/mac/hid.o: ../hidapi/mac/hid.c \
  ../hidapi/hidapi/hidapi.h
../hidapi/mac/hid.c:
../hidapi/hidapi/hidapi.h:
