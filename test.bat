@echo off

rem Compile SALSA files
java -cp salsa1.1.6.jar;. salsac.SalsaCompiler concurrent/*.salsa

rem Compile Java files
javac -classpath salsa1.1.6.jar;. concurrent/*.java

rem Run the Java program
java -cp salsa1.1.6.jar;. concurrent.GraphStats

pause