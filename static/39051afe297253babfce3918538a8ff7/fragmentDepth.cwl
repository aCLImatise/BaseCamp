class: CommandLineTool
id: fragmentDepth.cwl
inputs:
- id: min
  doc: use scaffolds at least N bases long.
  type: string
  inputBinding:
    prefix: -min
- id: max
  doc: use scaffolds at most N bases long.
  type: string
  inputBinding:
    prefix: -max
outputs: []
cwlVersion: v1.1
baseCommand:
- fragmentDepth
