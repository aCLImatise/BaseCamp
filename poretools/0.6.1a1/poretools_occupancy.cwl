class: CommandLineTool
id: poretools_occupancy.cwl
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
  doc: The type of plot to generate
  type: string
  inputBinding:
    prefix: --plot-type
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- occupancy
