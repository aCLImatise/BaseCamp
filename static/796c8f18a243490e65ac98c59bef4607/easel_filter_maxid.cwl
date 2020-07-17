class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/easel_filter_maxid.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- filter
- maxid
