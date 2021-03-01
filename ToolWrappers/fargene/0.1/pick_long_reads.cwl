class: CommandLineTool
id: pick_long_reads.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_length
  doc: ''
  type: long?
  inputBinding:
    prefix: --length
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pick_long_reads
