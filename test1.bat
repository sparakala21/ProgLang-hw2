@echo off

rem Compile SALSA files
java -cp salsa1.1.6.jar;. salsac.SalsaCompiler distributed/*.salsa

rem Compile Java files
javac -classpath salsa1.1.6.jar;. distributed/*.java

rem Compile Java files
[host0:dir0]$ wwcns 3030

rem Compile Java files
[host1:dir1]$ wwctheater [port number 1]

rem Compile Java files
[host2:dir2]$ wwctheater [port number 2]

rem Run the Java program
java -cp salsa1.1.6.jar;. distributed.GraphStats input.txt a_output.txt b_output.txt localhost:3030 theaters.txt

pause