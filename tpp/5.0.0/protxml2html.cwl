class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/protxml2html.pl.cwl
inputs:
- id: file
  doc: ''
  type: string
  inputBinding:
    prefix: -file
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- protxml2html.pl
