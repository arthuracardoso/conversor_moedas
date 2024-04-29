@echo off
rem This file was created by pub v3.2.6.
rem Package: dhttpd
rem Version: 4.1.0
rem Executable: dhttpd
rem Script: dhttpd
if exist "C:\Users\user\AppData\Local\Pub\Cache\global_packages\dhttpd\bin\dhttpd.dart-3.2.6.snapshot"                                                                                                                                                                          (
  call dart "C:\Users\user\AppData\Local\Pub\Cache\global_packages\dhttpd\bin\dhttpd.dart-3.2.6.snapshot"                                                                                                                                                                          %*
  rem The VM exits with code 253 if the snapshot version is out-of-date.
  rem If it is, we need to delete it and run "pub global" manually.
  if not errorlevel 253 (
    goto error
  )
  call dart pub global run dhttpd:dhttpd %*
) else (
  call dart pub global run dhttpd:dhttpd %*
)
goto eof
:error
exit /b %errorlevel%
:eof
