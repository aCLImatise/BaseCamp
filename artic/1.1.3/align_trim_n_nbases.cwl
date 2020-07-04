class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/align_trim_n_nbases.cwl
inputs:
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- align_trim_n
- nbases
