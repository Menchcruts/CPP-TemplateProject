-- premake5.lua

require "premake-cmake/cmake"

workspace "CPP-Template"
   architecture "x64"
   configurations { "Debug", "Release" }
   startproject "Project"

   -- Workspace-wide build options for MSVC
   filter "toolset:msc"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Core/CoreProject/"

group "Dependencies"
    

group ""
    include "Project/"