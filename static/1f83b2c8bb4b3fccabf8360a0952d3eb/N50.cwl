class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/N50.pl.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -G
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- N50.pl
