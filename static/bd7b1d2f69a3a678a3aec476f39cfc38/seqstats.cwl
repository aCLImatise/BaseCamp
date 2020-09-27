class: CommandLineTool
id: seqstats.cwl
inputs:
- id: in_in_dot_fast_a_vertical_line_in_dot_fast_q
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
- seqstats
