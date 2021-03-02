class: CommandLineTool
id: streamer_1d.cwl
inputs:
- id: in_in_dot_two_ddot_pairs_do_tgz
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- streamer_1d
