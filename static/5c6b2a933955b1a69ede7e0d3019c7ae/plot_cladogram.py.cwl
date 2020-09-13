class: CommandLineTool
id: ../../../plot_cladogram.py.cwl
inputs:
- id: in_clade_sep
  doc: ''
  type: string
  inputBinding:
    prefix: --clade_sep
- id: in_max_lev
  doc: ''
  type: long
  inputBinding:
    prefix: --max_lev
- id: in_max_point_size
  doc: ''
  type: long
  inputBinding:
    prefix: --max_point_size
- id: in_min_point_size
  doc: ''
  type: long
  inputBinding:
    prefix: --min_point_size
- id: in_point_edge_width
  doc: ''
  type: string
  inputBinding:
    prefix: --point_edge_width
- id: in_siblings_connector_width
  doc: ''
  type: string
  inputBinding:
    prefix: --siblings_connector_width
- id: in_parents_connector_width
  doc: ''
  type: string
  inputBinding:
    prefix: --parents_connector_width
- id: in_radial_start_lev
  doc: ''
  type: string
  inputBinding:
    prefix: --radial_start_lev
- id: in_labeled_start_lev
  doc: ''
  type: string
  inputBinding:
    prefix: --labeled_start_lev
- id: in_labeled_stop_lev
  doc: ''
  type: string
  inputBinding:
    prefix: --labeled_stop_lev
- id: in_ab_rv_start_lev
  doc: ''
  type: string
  inputBinding:
    prefix: --abrv_start_lev
- id: in_ab_rv_stop_lev
  doc: ''
  type: string
  inputBinding:
    prefix: --abrv_stop_lev
- id: in_expand_void_lev
  doc: ''
  type: string
  inputBinding:
    prefix: --expand_void_lev
- id: in_class_legend_vis
  doc: ''
  type: string
  inputBinding:
    prefix: --class_legend_vis
- id: in_colored_connector
  doc: ''
  type: string
  inputBinding:
    prefix: --colored_connector
- id: in_alpha
  doc: ''
  type: string
  inputBinding:
    prefix: --alpha
- id: in_title
  doc: ''
  type: string
  inputBinding:
    prefix: --title
- id: in_sub_clade
  doc: ''
  type: string
  inputBinding:
    prefix: --sub_clade
- id: in_title_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --title_font_size
- id: in_right_space_prop
  doc: ''
  type: string
  inputBinding:
    prefix: --right_space_prop
- id: in_left_space_prop
  doc: ''
  type: string
  inputBinding:
    prefix: --left_space_prop
- id: in_label_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --label_font_size
- id: in_background_color
  doc: set the color of the background
  type: string
  inputBinding:
    prefix: --background_color
- id: in_colored_labels
  doc: draw the label with class color (1) or in black (0)
  type: string
  inputBinding:
    prefix: --colored_labels
- id: in_class_legend_font_size
  doc: ''
  type: long
  inputBinding:
    prefix: --class_legend_font_size
- id: in_dpi
  doc: ''
  type: string
  inputBinding:
    prefix: --dpi
- id: in_format
  doc: the format for the output file
  type: File
  inputBinding:
    prefix: --format
- id: in_all_feats
  doc: ''
  type: string
  inputBinding:
    prefix: --all_feats
- id: in_input_file
  doc: tab delimited input file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the file for the output image
  type: string
  inputBinding:
    position: 1
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
- plot_cladogram.py
