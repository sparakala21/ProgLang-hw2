@echo off
set version=1.1.6
java -cp salsa%version%.jar;. salsac.SalsaCompiler %1.salsa
javac -cp salsa%version%.jar;. %1.java

