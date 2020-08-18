class: CommandLineTool
id: ../../../env.cwl
inputs:
- id: ignore_environment
  doc: start with an empty environment
  type: boolean
  inputBinding:
    prefix: --ignore-environment
- id: 'null'
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --null
- id: unset
  doc: remove variable from the environment
  type: string
  inputBinding:
    prefix: --unset
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- env
