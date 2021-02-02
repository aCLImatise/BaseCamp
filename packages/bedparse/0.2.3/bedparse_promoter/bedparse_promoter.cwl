class: CommandLineTool
id: ../../../bedparse_promoter.cwl
inputs:
- id: in_up
  doc: Get this many nt upstream of each feature.
  type: string
  inputBinding:
    prefix: --up
- id: in_down
  doc: Get this many nt downstream of each feature.
  type: string
  inputBinding:
    prefix: --down
- id: in_un_stranded
  doc: Do not consider strands.
  type: boolean
  inputBinding:
    prefix: --unstranded
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- promoter
