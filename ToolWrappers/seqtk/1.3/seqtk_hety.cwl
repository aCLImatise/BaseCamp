class: CommandLineTool
id: seqtk_hety.cwl
inputs:
- id: in_window_size
  doc: window size [50000]
  type: long?
  inputBinding:
    prefix: -w
- id: in_start_positions_window
  doc: '# start positions in a window [5]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_treat_lowercases_masked
  doc: treat lowercases as masked
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqtk
- hety
