class: CommandLineTool
id: stripSubsetLCBs.cwl
inputs:
- id: in_input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_bbc_ols
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_min
  doc: ''
  type: long?
  inputBinding:
    position: 3
- id: in_lcb
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_size
  doc: ''
  type: long?
  inputBinding:
    position: 5
- id: in_genomes
  doc: ''
  type: string?
  inputBinding:
    position: 7
- id: in_randomly
  doc: ''
  type: string?
  inputBinding:
    position: 8
- id: in_subsample
  doc: ''
  type: string?
  inputBinding:
    position: 9
- id: in_to
  doc: ''
  type: string?
  inputBinding:
    position: 10
- id: in_x
  doc: ''
  type: string?
  inputBinding:
    position: 11
- id: in_kb
  doc: ''
  type: string?
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stripSubsetLCBs
