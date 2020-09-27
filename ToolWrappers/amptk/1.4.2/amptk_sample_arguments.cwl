class: CommandLineTool
id: amptk_sample_arguments.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_am_ptk_barcode_rarifydotpy
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
- amptk
- sample
- arguments
