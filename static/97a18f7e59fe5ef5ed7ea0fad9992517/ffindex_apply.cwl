class: CommandLineTool
id: ffindex_apply.cwl
inputs:
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_d
  doc: ''
  type: File?
  inputBinding:
    prefix: -d
- id: in_k
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_data_filename
  doc: Input ffindex data file.
  type: string
  inputBinding:
    position: 0
- id: in_index_filename
  doc: Input ffindex index file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_i
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_i)
- id: out_d
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_d)
hints: []
cwlVersion: v1.1
baseCommand:
- ffindex_apply
