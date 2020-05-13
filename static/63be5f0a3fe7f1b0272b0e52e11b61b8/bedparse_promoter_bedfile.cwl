class: CommandLineTool
id: bedparse_promoter_bedfile.cwl
inputs:
- id: up
  doc: ''
  type: string
  inputBinding:
    prefix: --up
- id: down
  doc: ''
  type: string
  inputBinding:
    prefix: --down
- id: un_stranded
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unstranded
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- promoter
- bedfile
