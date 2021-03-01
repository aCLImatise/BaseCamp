class: CommandLineTool
id: poretools_occupancy.cwl
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
  doc: --plot-type STRING  The type of plot to generate
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
- occupancy
