class: CommandLineTool
id: ../../../proteinortho_ffadj_mcs.py.cwl
inputs:
- id: in_repeat_matching
  doc: 'match N repetitions (default: 0)'
  type: long
  inputBinding:
    prefix: --repeat-matching
- id: in_min_cs_size
  doc: 'minimal cs size (default: 1)'
  type: long
  inputBinding:
    prefix: --min-cs-size
- id: in_greedy
  doc: ''
  type: string
  inputBinding:
    prefix: --greedy
- id: in_edge_weight_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --edge_weight_threshold
- id: in_alpha
  doc: ''
  type: string
  inputBinding:
    prefix: --alpha
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- proteinortho_ffadj_mcs.py
