class: CommandLineTool
id: rsem_generate_data_matrix.cwl
inputs:
- id: in_sample_a_dot
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
- rsem-generate-data-matrix
