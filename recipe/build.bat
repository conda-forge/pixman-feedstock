@ECHO ON

%BUILD_PREFIX%\Scripts\meson setup builddir ^
  %MESON_ARGS% ^
  --default-library=shared ^
  --wrap-mode=nofallback ^
  --backend=ninja
if errorlevel 1 exit 1

ninja -v -C builddir -j %CPU_COUNT%
if errorlevel 1 exit 1

ninja -C builddir install -j %CPU_COUNT%
if errorlevel 1 exit 1
