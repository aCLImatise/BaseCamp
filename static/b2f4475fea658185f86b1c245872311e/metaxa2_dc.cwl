class: CommandLineTool
id: metaxa2_dc.cwl
inputs:
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- metaxa2_dc
