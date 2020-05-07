class: CommandLineTool
id: regtools_variants.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- variants
