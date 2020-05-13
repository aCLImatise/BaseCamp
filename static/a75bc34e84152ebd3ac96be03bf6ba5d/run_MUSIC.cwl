class: CommandLineTool
id: run_MUSIC.csh_Arguments.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- run_MUSIC.csh
- Arguments
