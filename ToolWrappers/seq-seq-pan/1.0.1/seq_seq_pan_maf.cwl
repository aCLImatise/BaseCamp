class: CommandLineTool
id: seq_seq_pan_maf.cwl
inputs:
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- maf
