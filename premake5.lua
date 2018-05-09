-- premake5.lua
workspace "TemplateTreesDemo"
   configurations { "Debug", "Release" }

project "Demonstrator"
   kind "ConsoleApp"
   language "C++"
   toolset "clang"
   buildoptions { "-std=c++17" }
   targetdir "bin/%{cfg.buildcfg}"

   files { "**.h", "*.hpp", "**.cpp" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On" 
