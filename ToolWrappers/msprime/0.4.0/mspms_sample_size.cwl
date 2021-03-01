class: CommandLineTool
id: mspms_sample_size.cwl
inputs:
- id: in_trees
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --trees
- id: in_mutation_rate
  doc: ''
  type: string?
  inputBinding:
    prefix: --mutation-rate
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_ms_pms
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
- mspms
- sample_size
