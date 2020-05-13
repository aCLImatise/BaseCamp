class: CommandLineTool
id: igdiscover_dbdiff.cwl
inputs:
- id: a
  doc: FASTA file with expected sequences
  type: string
  inputBinding:
    position: 0
- id: b
  doc: FASTA file with actual sequences
  type: string
  inputBinding:
    position: 1
- id: color
  doc: Whether to colorize output
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- dbdiff
