project "ImGui"
    kind "StaticLib"
    language "C++"
    staticruntime "off"
    warnings "off"

    -- do these go to the 'master' directory or just the directory with GLFW?
    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin/" .. outputdir .. "/obj/%{prj.name}")

    files
    {
       "imconfig.h",
       "imgui.h",
       "imgui.cpp",

       "imgui_draw.cpp",
       "imgui_internal.h",
       "imgui_widges.cpp",
       
       "imstb_rectpack.h",
       "imstb_textedit.h",
       "imstb_truetype.h",
       "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
    
    filter "configurations:Release or Distribution"
        runtime "Release"
        optimize "Speed"
    
    filter "configurations:Distribution"
        symbols "Off"