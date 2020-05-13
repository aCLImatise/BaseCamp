class: CommandLineTool
id: tty.cwl
inputs:
- id: silent
  doc: nothing, only return an exit status
  type: string
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- tty
