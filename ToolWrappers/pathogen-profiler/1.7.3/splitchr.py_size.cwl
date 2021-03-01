class: CommandLineTool
id: splitchr.py_size.cwl
inputs:
- id: in_reformat
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --reformat
- id: in_bed
  doc: ''
  type: string?
  inputBinding:
    prefix: --bed
- id: in_split_chr_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitchr.py
- size
