class: CommandLineTool
id: coverm_contig.cwl
inputs:
- id: reference
  doc: '...'
  type: string
  inputBinding:
    prefix: --reference
- id: single
  doc: '...'
  type: string
  inputBinding:
    prefix: --single
outputs: []
cwlVersion: v1.1
baseCommand:
- coverm
- contig
