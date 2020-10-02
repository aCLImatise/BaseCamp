class: CommandLineTool
id: mimodd_varextract.cwl
inputs:
- id: in_keep_alts
  doc: keep all alternate allele candidates even if they do
  type: boolean
  inputBinding:
    prefix: --keep-alts
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_p
  doc: ''
  type: string[]
  inputBinding:
    prefix: -p
- id: in_var_extract
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mimodd
- varextract
