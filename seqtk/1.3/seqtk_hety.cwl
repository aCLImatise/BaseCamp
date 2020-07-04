class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_hety.cwl
inputs:
- id: window_size
  doc: window size [50000]
  type: long
  inputBinding:
    prefix: -w
- id: start_positions_window
  doc: '# start positions in a window [5]'
  type: long
  inputBinding:
    prefix: -t
- id: treat_lowercases_masked
  doc: treat lowercases as masked
  type: boolean
  inputBinding:
    prefix: -m
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- hety
