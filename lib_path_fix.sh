#!/bin/sh

# Fix so that the executable links against the bundled libraries
echo "Fixing library name paths"

#MacIrssi
install_name_tool -change /usr/local/lib/libgmodule-2.0.0.dylib @executable_path/../Frameworks/libgmodule-2.0.0.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/MacOS/MacIrssi
install_name_tool -change /usr/local/lib/libglib-2.0.0.dylib @executable_path/../Frameworks/libglib-2.0.0.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/MacOS/MacIrssi
install_name_tool -change /usr/lib/libiconv.2.dylib @executable_path/../Frameworks/libiconv.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/MacOS/MacIrssi
install_name_tool -change /usr/local/lib/libintl.8.dylib @executable_path/../Frameworks/libintl.8.0.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/MacOS/MacIrssi

#Theme preview daemon
install_name_tool -change /usr/local/lib/libgmodule-2.0.0.dylib @executable_path/../Frameworks/libgmodule-2.0.0.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/ThemePreviewDaemon/ThemePreviewDaemon
install_name_tool -change /usr/local/lib/libglib-2.0.0.dylib @executable_path/../Frameworks/libglib-2.0.0.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/ThemePreviewDaemon/ThemePreviewDaemon
install_name_tool -change /usr/lib/libiconv.2.dylib @executable_path/../Frameworks/libiconv.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/ThemePreviewDaemon/ThemePreviewDaemon
install_name_tool -change /usr/local/lib/libintl.8.dylib @executable_path/../Frameworks/libintl.8.0.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/ThemePreviewDaemon/ThemePreviewDaemon

#libglib
install_name_tool -change /usr/lib/libiconv.2.dylib @executable_path/../Frameworks/libiconv.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/Frameworks/libglib-2.0.0.dylib
install_name_tool -change /usr/local/lib/libintl.8.dylib @executable_path/../Frameworks/libintl.8.0.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/Frameworks/libglib-2.0.0.dylib

#libgmodule
install_name_tool -change /usr/local/lib/libglib-2.0.0.dylib @executable_path/../Frameworks/libglib-2.0.0.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/Frameworks/libgmodule-2.0.0.dylib
install_name_tool -change /usr/lib/libiconv.2.dylib @executable_path/../Frameworks/libiconv.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/Frameworks/libgmodule-2.0.0.dylib
install_name_tool -change /usr/local/lib/libintl.8.dylib @executable_path/../Frameworks/libintl.8.0.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/Frameworks/libgmodule-2.0.0.dylib

#libintl
install_name_tool -change /usr/lib/libiconv.2.dylib @executable_path/../Frameworks/libiconv.2.dylib $TARGET_BUILD_DIR/MacIrssi.app/Contents/Frameworks/libintl.8.0.2.dylib

exit 0