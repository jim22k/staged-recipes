:: Fix for https://github.com/jkriege2/JKQtPlotter/issues/35
set "CXXFLAGS= -MD"

mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% -DJKQtPlotter_BUILD_EXAMPLES=OFF -DJKQtPlotter_BUILD_STATIC_LIBS=OFF -DCMAKE_BUILD_TYPE=Release ..
if errorlevel 1 exit 1
cmake --build . --config Release --target install
if errorlevel 1 exit 1
