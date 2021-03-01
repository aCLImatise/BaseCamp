class: CommandLineTool
id: makeNBaitsPerBinFile.py.cwl
inputs:
- id: in_remove_adjacent
  doc: ''
  type: string?
  inputBinding:
    prefix: --removeAdjacent
- id: in_binsize
  doc: ''
  type: long?
  inputBinding:
    prefix: --binsize
- id: in_max_l_brown_est
  doc: ''
  type: long?
  inputBinding:
    prefix: --maxLBrownEst
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makeNBaitsPerBinFile.py
