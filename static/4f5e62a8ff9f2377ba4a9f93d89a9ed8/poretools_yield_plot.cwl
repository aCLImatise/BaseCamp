class: CommandLineTool
id: poretools_yield_plot.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_save_as
  doc: Save the plot to a file. Extension (.pdf or .png) drives
  type: File?
  inputBinding:
    prefix: --saveas
- id: in_theme_bw
  doc: Use a black and white theme.
  type: boolean?
  inputBinding:
    prefix: --theme-bw
- id: in_skip
  doc: Only plot every n points to reduce size
  type: long?
  inputBinding:
    prefix: --skip
- id: in_saved_f
  doc: Save the data frame used to construct plot to a file.
  type: File?
  inputBinding:
    prefix: --savedf
- id: in_plot_type
  doc: ''
  type: string?
  inputBinding:
    prefix: --plot-type
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
- id: in_type_dot
  doc: --plot-type STRING  Save the wiggle plot to a file (def=reads).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- poretools
- yield_plot
