class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fetchproks.sh.cwl
inputs:
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fetchproks.sh
