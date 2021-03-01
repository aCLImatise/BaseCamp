class: CommandLineTool
id: lefse_plot_res.py.cwl
inputs:
- id: in_feature_font_size
  doc: the file for the output image
  type: File?
  inputBinding:
    prefix: --feature_font_size
- id: in_format
  doc: the format for the output file
  type: File?
  inputBinding:
    prefix: --format
- id: in_class_legend_font_size
  doc: only for vertical histograms
  type: string?
  inputBinding:
    prefix: --class_legend_font_size
- id: in_background_color
  doc: set the color of the background
  type: string?
  inputBinding:
    prefix: --background_color
- id: in_sub_clades
  doc: "number of label levels to be dislayed (starting from\nthe leaves, -1 means\
    \ all the levels, 1 is default )"
  type: long?
  inputBinding:
    prefix: --subclades
- id: in_max_feature_len
  doc: Maximum length of feature strings (def 60)
  type: long?
  inputBinding:
    prefix: --max_feature_len
- id: in_all_feats
  doc: "Plot only species resolved OTUs (as opposed to all\nlevels)"
  type: string?
  inputBinding:
    prefix: --all_feats
- id: in_report_features
  doc: Report important features to STDOUT
  type: boolean?
  inputBinding:
    prefix: --report_features
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
- id: out_feature_font_size
  doc: the file for the output image
  type: File?
  outputBinding:
    glob: $(inputs.in_feature_font_size)
- id: out_format
  doc: the format for the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints: []
cwlVersion: v1.1
baseCommand:
- lefse-plot_res.py
