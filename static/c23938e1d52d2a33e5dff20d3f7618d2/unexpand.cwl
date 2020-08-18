class: CommandLineTool
id: ../../../unexpand.cwl
inputs:
- id: all
  doc: convert all blanks, instead of just initial blanks
  type: boolean
  inputBinding:
    prefix: --all
- id: first_only
  doc: convert only leading sequences of blanks (overrides -a)
  type: boolean
  inputBinding:
    prefix: --first-only
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- unexpand
