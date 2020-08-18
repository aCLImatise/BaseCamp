class: CommandLineTool
id: ../../../tty.cwl
inputs:
- id: silent
  doc: nothing, only return an exit status
  type: string
  inputBinding:
    prefix: --silent
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tty
