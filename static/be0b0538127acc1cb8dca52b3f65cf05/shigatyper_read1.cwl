class: CommandLineTool
id: shigatyper_read1.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_read_one
  doc: read2
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shigatyper
- read1
