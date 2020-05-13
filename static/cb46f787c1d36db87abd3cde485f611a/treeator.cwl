class: CommandLineTool
id: treeator.cwl
inputs:
- id: output
  doc: (default w).
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- treeator
