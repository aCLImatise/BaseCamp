class: CommandLineTool
id: deepbgc_train.cwl
inputs:
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_inputs
  doc: Training sequences (Pfam TSV) file paths
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepbgc
- train
