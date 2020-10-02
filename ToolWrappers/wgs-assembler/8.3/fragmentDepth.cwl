class: CommandLineTool
id: fragmentDepth.cwl
inputs:
- id: in_min
  doc: use scaffolds at least N bases long.
  type: long
  inputBinding:
    prefix: -min
- id: in_max
  doc: use scaffolds at most N bases long.
  type: long
  inputBinding:
    prefix: -max
- id: in_step_size
  doc: will compute those stats, in blocks of N bases (e.g., for bases
  type: string
  inputBinding:
    prefix: -stepSize
- id: in_mode
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
- fragmentDepth
