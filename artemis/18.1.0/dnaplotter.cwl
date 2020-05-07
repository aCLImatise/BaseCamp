class: CommandLineTool
id: dnaplotter.cwl
inputs:
- id: t
  doc: Read a template file
  type: File
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- dnaplotter
