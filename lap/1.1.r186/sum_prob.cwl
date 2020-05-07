class: CommandLineTool
id: sum_prob.py.cwl
inputs:
- id: threshold
  doc: any probabilities below this threshold are set to the threshold value. (default
    1e-18)
  type: boolean
  inputBinding:
    prefix: --threshold
- id: input
  doc: input file containing probabilities (reads  from stdin by default)
  type: boolean
  inputBinding:
    prefix: --input
- id: debug_level
  doc: determines how much debug output.
  type: boolean
  inputBinding:
    prefix: --debug_level
outputs: []
cwlVersion: v1.1
baseCommand:
- sum_prob.py
