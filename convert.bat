@echo off
set ffmpeg_path=D:\ffmpeg\bin\ffmpeg.exe
set input_folder=C:\Users\Administrator\Downloads\ht\2024
set output_folder=D:\ht\2024

for %%i in ("%input_folder%\*.html") do (
    "%ffmpeg_path%" -i "%%i" -c copy "%output_folder%\%%~ni.mp4"
)
pause
