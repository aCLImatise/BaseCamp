class: CommandLineTool
id: ../../../decontaminate.sh.cwl
inputs:
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- decontaminate.sh
