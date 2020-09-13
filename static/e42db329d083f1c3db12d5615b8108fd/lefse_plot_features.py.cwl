class: CommandLineTool
id: ../../../lefse_plot_features.py.cwl
inputs:
- id: in_width
  doc: ''
  type: string
  inputBinding:
    prefix: --width
- id: in_height
  doc: ''
  type: string
  inputBinding:
    prefix: --height
- id: in_top
  doc: set maximum y limit (-1.0 means automatic limit)
  type: double
  inputBinding:
    prefix: --top
- id: in_bot
  doc: "set minimum y limit (default 0.0, -1.0 means automatic\nlimit)"
  type: double
  inputBinding:
    prefix: --bot
- id: in_title_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --title_font_size
- id: in_class_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --class_font_size
- id: in_class_label_pos
  doc: ''
  type: string
  inputBinding:
    prefix: --class_label_pos
- id: in_sub_cl_mean
  doc: ''
  type: string
  inputBinding:
    prefix: --subcl_mean
- id: in_sub_cl_median
  doc: ''
  type: string
  inputBinding:
    prefix: --subcl_median
- id: in_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --font_size
- id: in_unused
  doc: unused
  type: string
  inputBinding:
    prefix: -n
- id: in_format
  doc: the format for the output file
  type: File
  inputBinding:
    prefix: --format
- id: in_wheter_plot_features
  doc: "wheter to plot all features (all), only those\ndifferentially abundant according\
    \ to LEfSe or only one\n(the one given with --feature_name)"
  type: string
  inputBinding:
    prefix: -f
- id: in_feature_name
  doc: "The name of the feature to plot (levels separated by\n.)"
  type: string
  inputBinding:
    prefix: --feature_name
- id: in_feature_num
  doc: The number of the feature to plot
  type: long
  inputBinding:
    prefix: --feature_num
- id: in_archive
  doc: ''
  type: string
  inputBinding:
    prefix: --archive
- id: in_background_color
  doc: set the color of the background
  type: string
  inputBinding:
    prefix: --background_color
- id: in_dpi
  doc: ''
  type: string
  inputBinding:
    prefix: --dpi
- id: in_output_file
  doc: "the file for the output (the zip file if an archive is\nrequired, the output\
    \ directory otherwise)"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: the format for the output file
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- lefse-plot_features.py
