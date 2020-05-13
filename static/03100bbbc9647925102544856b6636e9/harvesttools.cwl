class: CommandLineTool
id: harvesttools.cwl
inputs:
- id: q
  doc: (quiet mode)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- harvesttools
