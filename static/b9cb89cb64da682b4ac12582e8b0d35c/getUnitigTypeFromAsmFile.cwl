class: CommandLineTool
id: ../../../getUnitigTypeFromAsmFile.perl.cwl
inputs:
- id: grep
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- getUnitigTypeFromAsmFile.perl
