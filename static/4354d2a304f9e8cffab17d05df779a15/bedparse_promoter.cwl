class: CommandLineTool
id: bedparse_promoter.cwl
inputs:
- id: up
  doc: Get this many nt upstream of each feature.
  type: string
  inputBinding:
    prefix: --up
- id: down
  doc: Get this many nt downstream of each feature.
  type: string
  inputBinding:
    prefix: --down
- id: un_stranded
  doc: Do not consider strands.
  type: boolean
  inputBinding:
    prefix: --unstranded
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- promoter
