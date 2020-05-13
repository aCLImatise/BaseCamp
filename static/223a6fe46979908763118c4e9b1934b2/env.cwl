class: CommandLineTool
id: env.cwl
inputs:
- id: unset
  doc: remove variable from the environment
  type: string
  inputBinding:
    prefix: --unset
outputs: []
cwlVersion: v1.1
baseCommand:
- env
