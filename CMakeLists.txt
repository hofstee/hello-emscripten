cmake_minimum_required(VERSION 3.14)
project(hello)

set(CMAKE_EXECUTABLE_SUFFIX ".html")

add_executable(index src/main.cc)

add_custom_command(TARGET index PRE_BUILD
                   COMMAND ${CMAKE_COMMAND} -E create_symlink
                   ${CMAKE_SOURCE_DIR}/web/ $<TARGET_FILE_DIR:index>/web)

target_link_libraries(index PUBLIC
  "--shell-file web/shell.html"

  "-s ENVIRONMENT=web"
  "-s WASM=1"

  # Debug flags
  "-g3"
  "-s DEMANGLE_SUPPORT=1"
  "-s ASSERTIONS=2"
  )
