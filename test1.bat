@echo off

rem Compile SALSA files
java -cp salsa1.1.6.jar;. salsac.SalsaCompiler distributed/*.salsa

rem Compile Java files
javac -classpath salsa1.1.6.jar;. distributed/*.java

rem Run the Java program
java -cp salsa1.1.6.jar;. distributed.GraphStats input.txt a_output.txt b_output.txt

pause