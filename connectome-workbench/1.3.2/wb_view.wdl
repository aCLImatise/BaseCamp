version 1.0

task WbView {
  input {
    Boolean? graphics_size
    String? logging
    Boolean? no_splash
    File? scene_load
    File? style
    Boolean? spec_load_all
    Boolean? window_size
    Boolean? window_pos
    String? files
  }
  command <<<
    wb_view \
      ~{files} \
      ~{if (graphics_size) then "-graphics-size" else ""} \
      ~{if defined(logging) then ("-logging " +  '"' + logging + '"') else ""} \
      ~{if (no_splash) then "-no-splash" else ""} \
      ~{if defined(scene_load) then ("-scene-load " +  '"' + scene_load + '"') else ""} \
      ~{if defined(style) then ("-style " +  '"' + style + '"') else ""} \
      ~{if (spec_load_all) then "-spec-load-all" else ""} \
      ~{if (window_size) then "-window-size" else ""} \
      ~{if (window_pos) then "-window-pos" else ""}
  >>>
  parameter_meta {
    graphics_size: "<X Y>\\nSet the size of the graphics region.\\nIf this option is used you WILL NOT be able\\nto change the size of the graphic region. It\\nmay be useful when image captures of a particular\\nsize are desired."
    logging: "Set the logging level.\\nValid Levels are:\\nSEVERE\\nWARNING\\nINFO\\nCONFIG\\nFINE\\nFINER\\nFINEST\\nALL\\nOFF"
    no_splash: "disable all splash screens"
    scene_load: "<scene-name-or-number>\\nload the specified scene file and display the scene\\nin the file that matches by name or number.  Name\\ntakes precedence over number.  The scene numbers\\nstart at one."
    style: "change the window style to the specified style\\nthe following styles are valid on this system:\\nWindows\\nFusion\\nThe selected style is listed on the About wb_view dialog\\navailable from the File Menu (On Macs: wb_view Menu).\\nPress the \\\"More\\\" button to see the selected style.\\nOther styles may be available on other systems."
    spec_load_all: "load all files in the given spec file, don't show spec file dialog"
    window_size: "<X Y>\\nSet the size of the browser window"
    window_pos: "<X Y>\\nSet the position of the browser window\\n"
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}