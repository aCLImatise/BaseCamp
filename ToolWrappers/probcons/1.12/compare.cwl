class: CommandLineTool
id: compare.cwl
inputs:
- id: in_an_not
  doc: ''
  type: File?
  inputBinding:
    prefix: -annot
- id: in_caps
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -caps
- id: in_core
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -core
- id: in_col
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -col
- id: in_score
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_test_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference_alignment
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_bali_base_an_not_file
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compare
