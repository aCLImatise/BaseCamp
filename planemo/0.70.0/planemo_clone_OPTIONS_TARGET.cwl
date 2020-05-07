class: CommandLineTool
id: planemo_clone_OPTIONS_TARGET.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- clone
- OPTIONS
- TARGET
