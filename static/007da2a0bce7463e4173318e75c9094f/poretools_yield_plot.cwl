class: CommandLineTool
id: poretools_yield_plot.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: save_as
  doc: Save the plot to a file. Extension (.pdf or .png) drives type.
  type: string
  inputBinding:
    prefix: --saveas
- id: plot_type
  doc: Save the wiggle plot to a file (def=reads).
  type: string
  inputBinding:
    prefix: --plot-type
- id: theme_bw
  doc: Use a black and white theme.
  type: boolean
  inputBinding:
    prefix: --theme-bw
- id: skip
  doc: Only plot every n points to reduce size
  type: long
  inputBinding:
    prefix: --skip
- id: saved_f
  doc: Save the data frame used to construct plot to a file.
  type: string
  inputBinding:
    prefix: --savedf
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- yield_plot
