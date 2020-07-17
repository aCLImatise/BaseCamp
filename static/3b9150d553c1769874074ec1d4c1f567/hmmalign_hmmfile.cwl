class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmalign_hmmfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmalign
- hmmfile
