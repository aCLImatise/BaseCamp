class: CommandLineTool
id: easel_filter_maxid.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- filter
- maxid
