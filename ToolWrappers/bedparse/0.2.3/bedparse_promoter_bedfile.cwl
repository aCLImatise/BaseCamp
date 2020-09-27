class: CommandLineTool
id: bedparse_promoter_bedfile.cwl
inputs:
- id: in_un_stranded
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unstranded
- id: in_down
  doc: ''
  type: string
  inputBinding:
    prefix: --down
- id: in_up
  doc: ''
  type: string
  inputBinding:
    prefix: --up
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- promoter
- bedfile
