class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hamming.cwl
inputs:
- id: size
  doc: '(unsigned int) default: 32 number of symbols'
  type: boolean
  inputBinding:
    prefix: -size
outputs: []
cwlVersion: v1.1
baseCommand:
- hamming
