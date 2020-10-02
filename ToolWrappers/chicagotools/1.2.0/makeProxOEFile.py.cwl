class: CommandLineTool
id: makeProxOEFile.py.cwl
inputs:
- id: in_remove_adjacent
  doc: ''
  type: string
  inputBinding:
    prefix: --removeAdjacent
- id: in_remove_b_two_b
  doc: ''
  type: long
  inputBinding:
    prefix: --removeb2b
- id: in_binsize
  doc: ''
  type: long
  inputBinding:
    prefix: --binsize
- id: in_max_l_brown_est
  doc: ''
  type: long
  inputBinding:
    prefix: --maxLBrownEst
- id: in_max_fra_glen
  doc: ''
  type: long
  inputBinding:
    prefix: --maxFragLen
- id: in_m_infra_glen
  doc: ''
  type: long
  inputBinding:
    prefix: --minFragLen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeProxOEFile.py
