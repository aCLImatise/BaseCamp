class: CommandLineTool
id: wb_view.cwl
inputs:
- id: in_graphics_size
  doc: "<X Y>\nSet the size of the graphics region.\nIf this option is used you WILL\
    \ NOT be able\nto change the size of the graphic region. It\nmay be useful when\
    \ image captures of a particular\nsize are desired."
  type: boolean?
  inputBinding:
    prefix: -graphics-size
- id: in_logging
  doc: "Set the logging level.\nValid Levels are:\nSEVERE\nWARNING\nINFO\nCONFIG\n\
    FINE\nFINER\nFINEST\nALL\nOFF"
  type: string?
  inputBinding:
    prefix: -logging
- id: in_no_splash
  doc: disable all splash screens
  type: boolean?
  inputBinding:
    prefix: -no-splash
- id: in_scene_load
  doc: "<scene-name-or-number>\nload the specified scene file and display the scene\n\
    in the file that matches by name or number.  Name\ntakes precedence over number.\
    \  The scene numbers\nstart at one."
  type: File?
  inputBinding:
    prefix: -scene-load
- id: in_style
  doc: "change the window style to the specified style\nthe following styles are valid\
    \ on this system:\nWindows\nFusion\nThe selected style is listed on the About\
    \ wb_view dialog\navailable from the File Menu (On Macs: wb_view Menu).\nPress\
    \ the \"More\" button to see the selected style.\nOther styles may be available\
    \ on other systems."
  type: File?
  inputBinding:
    prefix: -style
- id: in_spec_load_all
  doc: load all files in the given spec file, don't show spec file dialog
  type: boolean?
  inputBinding:
    prefix: -spec-load-all
- id: in_window_size
  doc: "<X Y>\nSet the size of the browser window"
  type: boolean?
  inputBinding:
    prefix: -window-size
- id: in_window_pos
  doc: "<X Y>\nSet the position of the browser window\n"
  type: boolean?
  inputBinding:
    prefix: -window-pos
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wb_view
