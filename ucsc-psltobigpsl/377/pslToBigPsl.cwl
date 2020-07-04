class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslToBigPsl.cwl
inputs:
- id: file_dot_psl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: stdout
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToBigPsl
