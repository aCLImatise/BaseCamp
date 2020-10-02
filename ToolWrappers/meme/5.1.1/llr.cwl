class: CommandLineTool
id: llr.cwl
inputs:
- id: in_range
  doc: ''
  type: string
  inputBinding:
    prefix: -range
- id: in_frac
  doc: ''
  type: string
  inputBinding:
    prefix: -frac
- id: in_w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: in_max_n
  doc: ''
  type: long
  inputBinding:
    prefix: -maxN
- id: in_minn
  doc: ''
  type: string
  inputBinding:
    prefix: -minN
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -N
- id: in_copyright
  doc: (2000-2006) The Regents of the University of California
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- llr
