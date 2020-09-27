class: CommandLineTool
id: sum_prob.py.cwl
inputs:
- id: in_threshold
  doc: "any probabilities below this threshold are\nset to the threshold value. (default\
    \ 1e-18)"
  type: boolean
  inputBinding:
    prefix: --threshold
- id: in_input
  doc: "input file containing probabilities (reads\nfrom stdin by default)"
  type: boolean
  inputBinding:
    prefix: --input
- id: in_debug_level
  doc: determines how much debug output.
  type: boolean
  inputBinding:
    prefix: --debug_level
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_prob
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sum_prob.py
