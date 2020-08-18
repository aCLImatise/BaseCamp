class: CommandLineTool
id: ../../../crossblock.sh.cwl
inputs:
- id: decontaminate_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crossblock.sh
