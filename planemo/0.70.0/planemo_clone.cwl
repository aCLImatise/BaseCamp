class: CommandLineTool
id: ../../../planemo_clone.cwl
inputs:
- id: fork
  doc: / --skip_fork
  type: boolean
  inputBinding:
    prefix: --fork
- id: branch
  doc: Create a named branch on result.
  type: string
  inputBinding:
    prefix: --branch
- id: target
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- clone
