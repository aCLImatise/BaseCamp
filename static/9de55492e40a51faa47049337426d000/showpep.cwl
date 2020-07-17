class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/showpep.cwl
inputs:
- id: format
  doc: 'menu       [2] Display format (Values: 0 (Enter your own list of things to
    display); 1 (Sequence only); 2 (Default sequence with features); 3 (Pretty sequence
    4:Baroque))'
  type: boolean
  inputBinding:
    prefix: -format
outputs: []
cwlVersion: v1.1
baseCommand:
- showpep
