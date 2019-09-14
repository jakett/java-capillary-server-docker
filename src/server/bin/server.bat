@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  server startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and SERVER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\server.jar;%APP_HOME%\lib\common.jar;%APP_HOME%\lib\lib.jar;%APP_HOME%\lib\apps-webpush-1.1.0.jar;%APP_HOME%\lib\tink-1.1.0.jar;%APP_HOME%\lib\grpc-protobuf-1.7.0.jar;%APP_HOME%\lib\protobuf-java-util-3.4.0.jar;%APP_HOME%\lib\protobuf-java-3.4.0.jar;%APP_HOME%\lib\grpc-netty-1.7.0.jar;%APP_HOME%\lib\grpc-stub-1.7.0.jar;%APP_HOME%\lib\netty-tcnative-boringssl-static-2.0.6.Final.jar;%APP_HOME%\lib\google-api-services-cloudkms-v1-rev9-1.22.0.jar;%APP_HOME%\lib\google-api-client-1.23.0.jar;%APP_HOME%\lib\gson-2.8.2.jar;%APP_HOME%\lib\grpc-protobuf-lite-1.7.0.jar;%APP_HOME%\lib\grpc-core-1.7.0.jar;%APP_HOME%\lib\instrumentation-api-0.4.3.jar;%APP_HOME%\lib\opencensus-api-0.6.0.jar;%APP_HOME%\lib\guava-23.4-jre.jar;%APP_HOME%\lib\commons-cli-1.4.jar;%APP_HOME%\lib\sqlite-jdbc-3.21.0.1.jar;%APP_HOME%\lib\aws-java-sdk-kms-1.11.166.jar;%APP_HOME%\lib\aws-java-sdk-core-1.11.166.jar;%APP_HOME%\lib\auto-service-1.0-rc4.jar;%APP_HOME%\lib\json-20170516.jar;%APP_HOME%\lib\netty-codec-http2-4.1.16.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.16.Final.jar;%APP_HOME%\lib\proto-google-common-protos-0.1.9.jar;%APP_HOME%\lib\ion-java-1.0.2.jar;%APP_HOME%\lib\jackson-dataformat-cbor-2.6.7.jar;%APP_HOME%\lib\joda-time-2.8.1.jar;%APP_HOME%\lib\jmespath-java-1.11.166.jar;%APP_HOME%\lib\auto-common-0.8.jar;%APP_HOME%\lib\grpc-context-1.7.0.jar;%APP_HOME%\lib\error_prone_annotations-2.0.19.jar;%APP_HOME%\lib\google-oauth-client-1.23.0.jar;%APP_HOME%\lib\google-http-client-jackson2-1.23.0.jar;%APP_HOME%\lib\google-http-client-1.23.0.jar;%APP_HOME%\lib\jsr305-3.0.0.jar;%APP_HOME%\lib\netty-codec-http-4.1.16.Final.jar;%APP_HOME%\lib\netty-handler-4.1.16.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.16.Final.jar;%APP_HOME%\lib\netty-codec-4.1.16.Final.jar;%APP_HOME%\lib\netty-transport-4.1.16.Final.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\jackson-databind-2.6.7.1.jar;%APP_HOME%\lib\netty-buffer-4.1.16.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.16.Final.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\jackson-annotations-2.6.0.jar;%APP_HOME%\lib\netty-common-4.1.16.Final.jar;%APP_HOME%\lib\guava-jdk5-17.0.jar;%APP_HOME%\lib\jackson-core-2.1.3.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar

@rem Execute server
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SERVER_OPTS%  -classpath "%CLASSPATH%" com.google.capillary.demo.server.DemoServer %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SERVER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SERVER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
