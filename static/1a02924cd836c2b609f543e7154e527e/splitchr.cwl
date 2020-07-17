class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splitchr.py_size.cwl
inputs:
- id: bed
  doc: ''
  type: string
  inputBinding:
    prefix: --bed
- id: reformat
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reformat
- id: split_chr_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- splitchr.py
- size
