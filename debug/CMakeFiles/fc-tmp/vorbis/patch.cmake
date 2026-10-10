cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

message(VERBOSE "Executing patch step for vorbis")

block(SCOPE_FOR VARIABLES)

execute_process(
  WORKING_DIRECTORY "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/vorbis-src"
  COMMAND_ERROR_IS_FATAL LAST
  COMMAND  [====[C:/Users/aarma/AppData/Local/Microsoft/WinGet/Packages/BrechtSanders.WinLibs.POSIX.UCRT_Microsoft.Winget.Source_8wekyb3d8bbwe/mingw64/bin/cmake.exe]====] [====[-DVORBIS_DIR=C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/vorbis-src]====] [====[-P]====] [====[C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/tools/vorbis/PatchVorbis.cmake]====]
)

endblock()
