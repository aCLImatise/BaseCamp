class: CommandLineTool
id: poppunk_calculate_rand_indices.py.cwl
inputs:
- id: in_input
  doc: "Comma separated list of clustering CSVs between which\nindices should be calculated\
    \ (required)"
  type: string
  inputBinding:
    prefix: --input
- id: in_output
  doc: Name of output file [default = rand.out]
  type: File
  inputBinding:
    prefix: --output
- id: in_subset
  doc: "File with list of sequences to extract for comparison, one\nper line, no header;\
    \ must be present in all CSVs\n"
  type: File
  inputBinding:
    prefix: --subset
- id: in_calculate_rand_indices
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file [default = rand.out]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- poppunk_calculate_rand_indices.py
