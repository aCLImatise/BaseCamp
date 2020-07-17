class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metaxa2_dc.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- metaxa2_dc
